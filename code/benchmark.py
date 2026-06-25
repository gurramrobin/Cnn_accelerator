import os
import csv
import time
import torch
import torch.nn as nn
import numpy as np
from torch.utils.data import Dataset, DataLoader
from torchvision import transforms, models
from PIL import Image

# ============================================================
# STEP 1: Paths and settings
# ============================================================
BASE_PATH   = r"C:\Users\LAB2_PC12\Desktop\CHINNA\NIELIT"
DATA_PATH   = os.path.join(BASE_PATH, "data",
                           "Dataset_BUSI")
CODE_PATH   = os.path.join(BASE_PATH, "code")
REPORT_PATH = os.path.join(BASE_PATH, "reports")

os.makedirs(REPORT_PATH, exist_ok=True)

CLASS_NAMES  = ['benign', 'malignant', 'normal']
NUM_CLASSES  = 3
IMAGE_SIZE   = 224
NUM_WORKERS  = 0
# Number of images to benchmark
NUM_BENCHMARK_IMAGES = 50

DEVICE = torch.device('cpu')
print(f"Device      : {DEVICE}")
print(f"Benchmarking: {NUM_BENCHMARK_IMAGES} images")
print(f"Report path : {REPORT_PATH}")

# ============================================================
# STEP 2: BUSIDataset — same as all previous files
# ============================================================
class BUSIDataset(Dataset):
    def __init__(self, data_path, class_names,
                 transform=None):
        self.transform   = transform
        self.image_paths = []
        self.labels      = []

        for label_idx, class_name in enumerate(
                class_names):
            folder = os.path.join(data_path, class_name)
            if not os.path.isdir(folder):
                continue
            for fname in sorted(os.listdir(folder)):
                # Skip mask images
                if 'mask' in fname.lower():
                    continue
                # Accept image files only
                if not fname.lower().endswith(
                        ('.png', '.jpg', '.jpeg')):
                    continue
                self.image_paths.append(
                    os.path.join(folder, fname))
                self.labels.append(label_idx)

    def __len__(self):
        return len(self.image_paths)

    def __getitem__(self, idx):
        # Open image and convert to RGB
        img = Image.open(
            self.image_paths[idx]).convert('RGB')
        # Apply preprocessing transforms
        if self.transform:
            img = self.transform(img)
        return img, self.labels[idx]

# ============================================================
# STEP 3: Transform — same as evaluation
# ============================================================
eval_transform = transforms.Compose([
    transforms.Resize((IMAGE_SIZE, IMAGE_SIZE)),
    transforms.ToTensor(),
    transforms.Normalize(
        mean=[0.485, 0.456, 0.406],
        std=[0.229, 0.224, 0.225])
])

# ============================================================
# STEP 4: Load dataset — use test split
# ============================================================
print("\nLoading dataset...")
full_dataset = BUSIDataset(
    DATA_PATH, CLASS_NAMES, transform=None)

total      = len(full_dataset)
train_size = int(0.70 * total)
val_size   = int(0.15 * total)
test_size  = total - train_size - val_size

# Same seed — same test images as all previous files
torch.manual_seed(42)
_, _, test_set = torch.utils.data.random_split(
    full_dataset,
    [train_size, val_size, test_size])

test_set.dataset.transform = eval_transform

# Batch size 1 — measure ONE image at a time
# This gives realistic single-image latency
# (In deployment the FPGA processes one frame at a time)
single_loader = DataLoader(
    test_set,
    batch_size=1,
    shuffle=False,
    num_workers=NUM_WORKERS)

print(f"  Test images available : {test_size}")
print(f"  Images to benchmark   : {NUM_BENCHMARK_IMAGES}")

# ============================================================
# STEP 5: Load best_model.pth
# ============================================================
print("\nLoading best_model.pth...")
model = models.mobilenet_v2(weights=None)
model.classifier = nn.Sequential(
    nn.Dropout(p=0.3),
    nn.Linear(model.last_channel, NUM_CLASSES)
)

model_path = os.path.join(CODE_PATH, 'best_model.pth')
model.load_state_dict(
    torch.load(model_path, map_location='cpu'))
model.eval()
print("  Model loaded successfully.")

# ============================================================
# STEP 6: Warmup run
# ============================================================
# Always do a warmup before benchmarking
# First run is slower due to memory allocation
# and CPU cache warming — not representative
print("\nRunning warmup (5 images)...")
warmup_count = 0
with torch.no_grad():
    for images, _ in single_loader:
        _ = model(images)
        warmup_count += 1
        if warmup_count >= 5:
            break
print("  Warmup complete.")

# ============================================================
# STEP 7: Benchmark — measure time per image
# ============================================================
print(f"\nBenchmarking {NUM_BENCHMARK_IMAGES} images...")
print("  (Measuring time for ONE image at a time)")

latencies_ms  = []   # time per image in milliseconds
predictions   = []   # model prediction for each image
true_labels   = []   # true label for each image
image_count   = 0

with torch.no_grad():
    for images, labels in single_loader:
        if image_count >= NUM_BENCHMARK_IMAGES:
            break

        images = images.to(DEVICE)

        # Measure inference time for this single image
        # time.perf_counter() is more accurate than
        # time.time() for short durations
        start_time = time.perf_counter()
        outputs    = model(images)
        end_time   = time.perf_counter()

        # Convert to milliseconds
        latency_ms = (end_time - start_time) * 1000
        latencies_ms.append(latency_ms)

        # Get prediction
        _, predicted = torch.max(outputs, 1)
        predictions.append(predicted.item())

        if isinstance(labels, torch.Tensor):
            true_labels.append(labels.item())
        else:
            true_labels.append(int(labels[0]))

        image_count += 1

        # Print progress every 10 images
        if image_count % 10 == 0:
            print(f"  {image_count}/"
                  f"{NUM_BENCHMARK_IMAGES} images done  "
                  f"(last: {latency_ms:.1f} ms)")

# ============================================================
# STEP 8: Calculate statistics
# ============================================================
latencies    = np.array(latencies_ms)
avg_latency  = np.mean(latencies)
min_latency  = np.min(latencies)
max_latency  = np.max(latencies)
std_latency  = np.std(latencies)
median_lat   = np.median(latencies)
fps          = 1000.0 / avg_latency

# Per-class latency breakdown
class_latencies = {name: [] for name in CLASS_NAMES}
for i, label in enumerate(true_labels):
    class_latencies[CLASS_NAMES[label]].append(
        latencies_ms[i])

print(f"\n{'='*55}")
print(f"CPU BENCHMARK RESULTS")
print(f"{'='*55}")
print(f"Images benchmarked : {image_count}")
print(f"Average latency    : {avg_latency:.2f} ms/image")
print(f"Median latency     : {median_lat:.2f} ms/image")
print(f"Minimum latency    : {min_latency:.2f} ms/image")
print(f"Maximum latency    : {max_latency:.2f} ms/image")
print(f"Std deviation      : {std_latency:.2f} ms")
print(f"Throughput         : {fps:.2f} images/second")
print(f"{'='*55}")
print(f"\nPer-class average latency:")
for name, lats in class_latencies.items():
    if lats:
        print(f"  {name:12s}: "
              f"{np.mean(lats):.2f} ms avg  "
              f"({len(lats)} images)")

# ============================================================
# STEP 9: Save benchmark results to CSV
# ============================================================
csv_path = os.path.join(
    REPORT_PATH, 'benchmark_results.csv')

with open(csv_path, 'w', newline='') as f:
    writer = csv.writer(f)
    # Header row
    writer.writerow([
        'image_index',
        'true_label',
        'predicted_label',
        'correct',
        'latency_ms'
    ])
    # One row per image
    for i in range(len(latencies_ms)):
        true_name  = CLASS_NAMES[true_labels[i]]
        pred_name  = CLASS_NAMES[predictions[i]]
        is_correct = (true_labels[i] == predictions[i])
        writer.writerow([
            i + 1,
            true_name,
            pred_name,
            'YES' if is_correct else 'NO',
            round(latencies_ms[i], 3)
        ])
    # Summary rows at bottom
    writer.writerow([])
    writer.writerow(['SUMMARY', '', '', '', ''])
    writer.writerow(['Average (ms)', '', '', '',
                     round(avg_latency, 3)])
    writer.writerow(['Median (ms)', '', '', '',
                     round(median_lat, 3)])
    writer.writerow(['Min (ms)', '', '', '',
                     round(min_latency, 3)])
    writer.writerow(['Max (ms)', '', '', '',
                     round(max_latency, 3)])
    writer.writerow(['Std Dev (ms)', '', '', '',
                     round(std_latency, 3)])
    writer.writerow(['FPS', '', '', '',
                     round(fps, 3)])

print(f"\nBenchmark CSV saved:")
print(f"  reports\\benchmark_results.csv")

# ============================================================
# STEP 10: Save summary text file
# ============================================================
summary_path = os.path.join(
    REPORT_PATH, 'day6_benchmark_summary.txt')

with open(summary_path, 'w') as f:
    f.write("CPU BENCHMARK SUMMARY\n")
    f.write("="*50 + "\n\n")
    f.write(f"Model        : MobileNet-V2 (Float32)\n")
    f.write(f"Device       : CPU\n")
    f.write(f"Input size   : 224x224x3\n")
    f.write(f"Batch size   : 1 (single image)\n")
    f.write(f"Images tested: {image_count}\n\n")
    f.write(f"LATENCY RESULTS:\n")
    f.write(f"  Average : {avg_latency:.2f} ms/image\n")
    f.write(f"  Median  : {median_lat:.2f} ms/image\n")
    f.write(f"  Min     : {min_latency:.2f} ms/image\n")
    f.write(f"  Max     : {max_latency:.2f} ms/image\n")
    f.write(f"  Std Dev : {std_latency:.2f} ms\n\n")
    f.write(f"THROUGHPUT:\n")
    f.write(f"  {fps:.2f} images/second\n\n")
    f.write(f"NOTE:\n")
    f.write(f"  This is the CPU software baseline.\n")
    f.write(f"  FPGA accelerator target: <33ms (30fps)\n")
    f.write(f"  Expected FPGA speedup  : "
            f"{avg_latency/33:.1f}x\n")

print(f"  reports\\day6_benchmark_summary.txt")
print(f"\nDay 6 Part 1 complete!")
print(f"\nKey number for your report:")
print(f"  CPU average latency : {avg_latency:.2f} ms/image")
print(f"  CPU throughput      : {fps:.2f} fps")
print(f"  FPGA target         : <33 ms (30 fps)")
print(f"  Expected speedup    : "
      f"{avg_latency/33:.1f}x faster on FPGA")