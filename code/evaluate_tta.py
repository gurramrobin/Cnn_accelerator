import os
import json
import torch
import torch.nn as nn
import numpy as np
import matplotlib.pyplot as plt
from torch.utils.data import Dataset, DataLoader
from torchvision import transforms, models
from PIL import Image
from sklearn.metrics import (confusion_matrix,
                             classification_report,
                             precision_recall_fscore_support)

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

# Number of augmented predictions per image
# More = better but slower
# 8 is the sweet spot for accuracy vs speed
TTA_RUNS = 8

DEVICE = torch.device(
    'cuda' if torch.cuda.is_available() else 'cpu')
print(f"Device      : {DEVICE}")
print(f"TTA runs    : {TTA_RUNS} predictions per image")
print(f"Model path  : {CODE_PATH}\\best_model.pth")

# ============================================================
# STEP 2: BUSIDataset
# ============================================================
class BUSIDataset(Dataset):
    def __init__(self, data_path, class_names,
                 transform=None):
        self.transform   = transform
        self.image_paths = []
        self.labels      = []

        for label_idx, class_name in enumerate(
                class_names):
            folder = os.path.join(data_path,
                                   class_name)
            if not os.path.isdir(folder):
                continue
            for fname in sorted(os.listdir(folder)):
                if 'mask' in fname.lower():
                    continue
                if not fname.lower().endswith(
                        ('.png', '.jpg', '.jpeg')):
                    continue
                self.image_paths.append(
                    os.path.join(folder, fname))
                self.labels.append(label_idx)

    def __len__(self):
        return len(self.image_paths)

    def __getitem__(self, idx):
        # Return PIL image — NOT tensor
        # TTA applies different transforms each time
        # so we need the raw PIL image
        img = Image.open(
            self.image_paths[idx]).convert('RGB')
        return img, self.labels[idx]

# ============================================================
# STEP 3: Define TTA transforms
# ============================================================
# Base transform — no augmentation
# Used as one of the TTA passes
base_transform = transforms.Compose([
    transforms.Resize((IMAGE_SIZE, IMAGE_SIZE)),
    transforms.ToTensor(),
    transforms.Normalize(
        mean=[0.485, 0.456, 0.406],
        std=[0.229, 0.224, 0.225])
])

# 7 augmented transforms — each gives a
# slightly different view of the same image
# Combined with base = 8 total TTA passes
tta_transforms = [
    # Pass 1 — base (no augmentation)
    transforms.Compose([
        transforms.Resize((IMAGE_SIZE, IMAGE_SIZE)),
        transforms.ToTensor(),
        transforms.Normalize(
            mean=[0.485, 0.456, 0.406],
            std=[0.229, 0.224, 0.225])
    ]),
    # Pass 2 — horizontal flip
    transforms.Compose([
        transforms.Resize((IMAGE_SIZE, IMAGE_SIZE)),
        transforms.RandomHorizontalFlip(p=1.0),
        transforms.ToTensor(),
        transforms.Normalize(
            mean=[0.485, 0.456, 0.406],
            std=[0.229, 0.224, 0.225])
    ]),
    # Pass 3 — vertical flip
    transforms.Compose([
        transforms.Resize((IMAGE_SIZE, IMAGE_SIZE)),
        transforms.RandomVerticalFlip(p=1.0),
        transforms.ToTensor(),
        transforms.Normalize(
            mean=[0.485, 0.456, 0.406],
            std=[0.229, 0.224, 0.225])
    ]),
    # Pass 4 — rotate +15 degrees
    transforms.Compose([
        transforms.Resize((IMAGE_SIZE, IMAGE_SIZE)),
        transforms.functional.rotate,
    ]),
    # Pass 5 — rotate -15 degrees
    transforms.Compose([
        transforms.Resize((IMAGE_SIZE, IMAGE_SIZE)),
        transforms.functional.rotate,
    ]),
    # Pass 6 — brightness up
    transforms.Compose([
        transforms.Resize((IMAGE_SIZE, IMAGE_SIZE)),
        transforms.ColorJitter(brightness=0.2),
        transforms.ToTensor(),
        transforms.Normalize(
            mean=[0.485, 0.456, 0.406],
            std=[0.229, 0.224, 0.225])
    ]),
    # Pass 7 — brightness down + slight contrast
    transforms.Compose([
        transforms.Resize((IMAGE_SIZE, IMAGE_SIZE)),
        transforms.ColorJitter(
            brightness=0.15, contrast=0.15),
        transforms.ToTensor(),
        transforms.Normalize(
            mean=[0.485, 0.456, 0.406],
            std=[0.229, 0.224, 0.225])
    ]),
    # Pass 8 — slight zoom in (centre crop then resize)
    transforms.Compose([
        transforms.Resize(
            (int(IMAGE_SIZE*1.15),
             int(IMAGE_SIZE*1.15))),
        transforms.CenterCrop(IMAGE_SIZE),
        transforms.ToTensor(),
        transforms.Normalize(
            mean=[0.485, 0.456, 0.406],
            std=[0.229, 0.224, 0.225])
    ]),
]

# Handle the rotation transforms properly
def apply_tta_transform(img, pass_idx):
    """
    Applies one TTA transform to a PIL image.
    Handles rotation separately since it needs a
    specific angle rather than random.
    """
    if pass_idx == 0:
        # Base — no augmentation
        t = transforms.Compose([
            transforms.Resize(
                (IMAGE_SIZE, IMAGE_SIZE)),
            transforms.ToTensor(),
            transforms.Normalize(
                mean=[0.485, 0.456, 0.406],
                std=[0.229, 0.224, 0.225])])
        return t(img)

    elif pass_idx == 1:
        # Horizontal flip
        t = transforms.Compose([
            transforms.Resize(
                (IMAGE_SIZE, IMAGE_SIZE)),
            transforms.RandomHorizontalFlip(p=1.0),
            transforms.ToTensor(),
            transforms.Normalize(
                mean=[0.485, 0.456, 0.406],
                std=[0.229, 0.224, 0.225])])
        return t(img)

    elif pass_idx == 2:
        # Vertical flip
        t = transforms.Compose([
            transforms.Resize(
                (IMAGE_SIZE, IMAGE_SIZE)),
            transforms.RandomVerticalFlip(p=1.0),
            transforms.ToTensor(),
            transforms.Normalize(
                mean=[0.485, 0.456, 0.406],
                std=[0.229, 0.224, 0.225])])
        return t(img)

    elif pass_idx == 3:
        # Rotate +15 degrees
        img_r = transforms.functional.rotate(
            img, angle=15)
        t = transforms.Compose([
            transforms.Resize(
                (IMAGE_SIZE, IMAGE_SIZE)),
            transforms.ToTensor(),
            transforms.Normalize(
                mean=[0.485, 0.456, 0.406],
                std=[0.229, 0.224, 0.225])])
        return t(img_r)

    elif pass_idx == 4:
        # Rotate -15 degrees
        img_r = transforms.functional.rotate(
            img, angle=-15)
        t = transforms.Compose([
            transforms.Resize(
                (IMAGE_SIZE, IMAGE_SIZE)),
            transforms.ToTensor(),
            transforms.Normalize(
                mean=[0.485, 0.456, 0.406],
                std=[0.229, 0.224, 0.225])])
        return t(img_r)

    elif pass_idx == 5:
        # Brightness up
        t = transforms.Compose([
            transforms.Resize(
                (IMAGE_SIZE, IMAGE_SIZE)),
            transforms.ColorJitter(brightness=0.2),
            transforms.ToTensor(),
            transforms.Normalize(
                mean=[0.485, 0.456, 0.406],
                std=[0.229, 0.224, 0.225])])
        return t(img)

    elif pass_idx == 6:
        # Brightness down + contrast
        t = transforms.Compose([
            transforms.Resize(
                (IMAGE_SIZE, IMAGE_SIZE)),
            transforms.ColorJitter(
                brightness=0.15,
                contrast=0.15),
            transforms.ToTensor(),
            transforms.Normalize(
                mean=[0.485, 0.456, 0.406],
                std=[0.229, 0.224, 0.225])])
        return t(img)

    elif pass_idx == 7:
        # Zoom in — centre crop
        t = transforms.Compose([
            transforms.Resize(
                (int(IMAGE_SIZE * 1.15),
                 int(IMAGE_SIZE * 1.15))),
            transforms.CenterCrop(IMAGE_SIZE),
            transforms.ToTensor(),
            transforms.Normalize(
                mean=[0.485, 0.456, 0.406],
                std=[0.229, 0.224, 0.225])])
        return t(img)

    else:
        # Fallback to base
        t = transforms.Compose([
            transforms.Resize(
                (IMAGE_SIZE, IMAGE_SIZE)),
            transforms.ToTensor(),
            transforms.Normalize(
                mean=[0.485, 0.456, 0.406],
                std=[0.229, 0.224, 0.225])])
        return t(img)

# ============================================================
# STEP 4: Load dataset — test split only
# ============================================================
print("\nLoading dataset...")
full_dataset = BUSIDataset(
    DATA_PATH, CLASS_NAMES, transform=None)

total      = len(full_dataset)
train_size = int(0.70 * total)
val_size   = int(0.15 * total)
test_size  = total - train_size - val_size

# Same seed as always — same test split
torch.manual_seed(42)
_, _, test_set = torch.utils.data.random_split(
    full_dataset,
    [train_size, val_size, test_size])

print(f"  Test images : {test_size}")

# ============================================================
# STEP 5: Load model
# ============================================================
print("\nLoading best_model.pth...")
model = models.mobilenet_v2(weights=None)
model.classifier = nn.Sequential(
    nn.Dropout(p=0.3),
    nn.Linear(model.last_channel, NUM_CLASSES)
)

model_path = os.path.join(CODE_PATH,
                           'best_model.pth')
model.load_state_dict(
    torch.load(model_path, map_location='cpu'))
model = model.to(DEVICE)
model.eval()
print("  Model loaded successfully.")

# ============================================================
# STEP 6: Run TTA predictions
# ============================================================
print(f"\nRunning TTA — {TTA_RUNS} passes per image...")
print("  (This takes longer than normal evaluation)")

all_predictions  = []
all_true_labels  = []
all_avg_probs    = []

for sample_idx, (img_pil, label) in enumerate(
        test_set):

    # Get true label
    if isinstance(label, torch.Tensor):
        true_label = label.item()
    else:
        true_label = int(label)

    # Accumulate probabilities across TTA passes
    accumulated_probs = np.zeros(NUM_CLASSES)

    with torch.no_grad():
        for pass_idx in range(TTA_RUNS):
            # Apply this TTA transform
            img_tensor = apply_tta_transform(
                img_pil, pass_idx)
            img_tensor = img_tensor.unsqueeze(0).to(
                DEVICE)

            # Get prediction
            output = model(img_tensor)
            probs  = torch.softmax(
                output, dim=1)[0].cpu().numpy()

            # Add to accumulator
            accumulated_probs += probs

    # Average probabilities across all TTA passes
    avg_probs  = accumulated_probs / TTA_RUNS
    pred_class = np.argmax(avg_probs)

    all_predictions.append(pred_class)
    all_true_labels.append(true_label)
    all_avg_probs.append(avg_probs)

    # Progress update
    if (sample_idx + 1) % 20 == 0:
        print(f"  {sample_idx+1}/{test_size} done...")

print(f"  All {test_size} images processed.")

# ============================================================
# STEP 7: Calculate results
# ============================================================
all_predictions = np.array(all_predictions)
all_true_labels = np.array(all_true_labels)

correct  = (all_predictions == all_true_labels).sum()
tta_acc  = 100.0 * correct / len(all_true_labels)

print(f"\n{'='*55}")
print(f"TTA RESULTS ({TTA_RUNS} passes per image)")
print(f"{'='*55}")
print(f"Total images     : {len(all_true_labels)}")
print(f"Correct          : {correct}")
print(f"Wrong            : "
      f"{len(all_true_labels) - correct}")
print(f"TTA Accuracy     : {tta_acc:.2f}%")
print(f"Original Accuracy: 85.47%")
improvement = tta_acc - 85.47
print(f"Improvement      : "
      f"{'+' if improvement >= 0 else ''}"
      f"{improvement:.2f}%")
print(f"{'='*55}")

# Per-class results
print(f"\nPer-class results:")
for i, name in enumerate(CLASS_NAMES):
    mask    = (all_true_labels == i)
    total_c = mask.sum()
    correct_c = (
        (all_predictions == i) & mask).sum()
    acc_c = 100.0 * correct_c / total_c \
            if total_c > 0 else 0
    orig = {'benign': 89.5,
            'malignant': 82.5,
            'normal': 80.0}
    diff = acc_c - orig[name]
    print(f"  {name:12s}: "
          f"{correct_c}/{total_c} "
          f"({acc_c:.1f}%)  "
          f"[was {orig[name]}%  "
          f"{'↑' if diff>=0 else '↓'}"
          f"{abs(diff):.1f}%]")

# Precision, Recall, F1
precision, recall, f1, support = (
    precision_recall_fscore_support(
        all_true_labels,
        all_predictions,
        average=None,
        labels=[0, 1, 2]))

print(f"\nDetailed metrics:")
print(f"{'Class':12s} {'Precision':>10} "
      f"{'Recall':>8} {'F1':>8}")
print("-"*42)
for i, name in enumerate(CLASS_NAMES):
    print(f"{name:12s} {precision[i]:>10.3f} "
          f"{recall[i]:>8.3f} {f1[i]:>8.3f}")

# Confusion matrix
cm = confusion_matrix(
    all_true_labels, all_predictions)

print(f"\nConfusion Matrix:")
print(f"{'':12s}", end="")
for name in CLASS_NAMES:
    print(f"{name:>12s}", end="")
print()
for i, name in enumerate(CLASS_NAMES):
    print(f"{name:12s}", end="")
    for j in range(NUM_CLASSES):
        print(f"{cm[i][j]:>12d}", end="")
    print()

# ============================================================
# STEP 8: Save confusion matrix image
# ============================================================
fig, ax = plt.subplots(figsize=(8, 6))
im = ax.imshow(cm, interpolation='nearest',
               cmap=plt.cm.Blues)
plt.colorbar(im, ax=ax)

tick_marks = np.arange(len(CLASS_NAMES))
ax.set_xticks(tick_marks)
ax.set_yticks(tick_marks)
ax.set_xticklabels(CLASS_NAMES, fontsize=12)
ax.set_yticklabels(CLASS_NAMES, fontsize=12)

thresh = cm.max() / 2.0
for i in range(cm.shape[0]):
    for j in range(cm.shape[1]):
        color = "white" if cm[i,j] > thresh \
                else "black"
        ax.text(j, i, str(cm[i, j]),
                ha="center", va="center",
                color=color, fontsize=14,
                fontweight='bold')

ax.set_ylabel('True Label', fontsize=13)
ax.set_xlabel('Predicted Label', fontsize=13)
ax.set_title(
    f'TTA Confusion Matrix ({TTA_RUNS} passes)\n'
    f'Accuracy: {tta_acc:.2f}% '
    f'(Original: 85.47%)',
    fontsize=12)

plt.tight_layout()
cm_path = os.path.join(
    REPORT_PATH,
    'tta_confusion_matrix.png')
plt.savefig(cm_path, dpi=150,
            bbox_inches='tight')
plt.show()

# ============================================================
# STEP 9: Save comparison report
# ============================================================
report_path = os.path.join(
    REPORT_PATH,
    'tta_evaluation_report.txt')
with open(report_path, 'w') as f:
    f.write("TTA EVALUATION REPORT\n")
    f.write("="*50 + "\n\n")
    f.write(f"TTA passes per image : {TTA_RUNS}\n")
    f.write(f"Original accuracy    : 85.47%\n")
    f.write(f"TTA accuracy         : {tta_acc:.2f}%\n")
    f.write(f"Improvement          : "
            f"{improvement:+.2f}%\n\n")
    f.write("Per-class:\n")
    for i, name in enumerate(CLASS_NAMES):
        mask = (all_true_labels == i)
        c    = ((all_predictions==i)&mask).sum()
        t    = mask.sum()
        f.write(f"  {name}: {c}/{t} "
                f"({100*c/t:.1f}%)\n")
    f.write(f"\nPrecision/Recall/F1:\n")
    for i, name in enumerate(CLASS_NAMES):
        f.write(f"  {name}: P={precision[i]:.3f} "
                f"R={recall[i]:.3f} "
                f"F1={f1[i]:.3f}\n")

print(f"\nSaved: reports\\tta_confusion_matrix.png")
print(f"Saved: reports\\tta_evaluation_report.txt")
print(f"\nTTA evaluation complete!")
print(f"TTA Accuracy   : {tta_acc:.2f}%")
print(f"Original       : 85.47%")
print(f"Improvement    : {improvement:+.2f}%")