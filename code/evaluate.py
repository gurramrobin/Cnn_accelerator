import os
import json
import torch
import torch.nn as nn
import numpy as np
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
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
BATCH_SIZE   = 16
IMAGE_SIZE   = 224
NUM_WORKERS  = 0

DEVICE = torch.device(
    'cuda' if torch.cuda.is_available() else 'cpu')
print(f"Device      : {DEVICE}")
print(f"Model path  : {CODE_PATH}\\best_model.pth")
print(f"Report path : {REPORT_PATH}")

# ============================================================
# STEP 2: BUSIDataset — same as Days 2 and 3
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
        img = Image.open(
            self.image_paths[idx]).convert('RGB')
        if self.transform:
            img = self.transform(img)
        return img, self.labels[idx]

# ============================================================
# STEP 3: Test transform — no augmentation
# ============================================================
test_transform = transforms.Compose([
    transforms.Resize((IMAGE_SIZE, IMAGE_SIZE)),
    transforms.ToTensor(),
    transforms.Normalize(
        mean=[0.485, 0.456, 0.406],
        std=[0.229, 0.224, 0.225])
])

# ============================================================
# STEP 4: Load dataset and get test split
# ============================================================
print("\nLoading dataset...")
full_dataset = BUSIDataset(
    DATA_PATH, CLASS_NAMES, transform=None)

total      = len(full_dataset)
train_size = int(0.70 * total)
val_size   = int(0.15 * total)
test_size  = total - train_size - val_size

# IMPORTANT: same seed as Day 3 — guarantees same split
# The 117 test images here are EXACTLY the same ones
# that were held out during training
torch.manual_seed(42)
_, _, test_set = torch.utils.data.random_split(
    full_dataset,
    [train_size, val_size, test_size])

test_set.dataset.transform = test_transform

test_loader = DataLoader(
    test_set,
    batch_size=BATCH_SIZE,
    shuffle=False,
    num_workers=NUM_WORKERS)

print(f"Test images : {test_size}")
print(f"Test batches: {len(test_loader)}")

# ============================================================
# STEP 5: Load the saved best model
# ============================================================
print("\nLoading best_model.pth...")
model = models.mobilenet_v2(weights=None)
model.classifier = nn.Sequential(
    nn.Dropout(p=0.3),
    nn.Linear(model.last_channel, NUM_CLASSES)
)

model_path = os.path.join(CODE_PATH, 'best_model.pth')
model.load_state_dict(
    torch.load(model_path,
               map_location=DEVICE))
model = model.to(DEVICE)
model.eval()
print("Model loaded successfully.")

# ============================================================
# STEP 6: Run inference on all 117 test images
# ============================================================
print("\nRunning inference on test set...")

all_predictions = []   # what model predicted
all_true_labels = []   # what the true label was
all_probabilities = [] # confidence scores

with torch.no_grad():
    for batch_idx, (images, labels) in enumerate(
            test_loader):
        images = images.to(DEVICE)
        if isinstance(labels, list):
            labels = torch.tensor(labels).to(DEVICE)
        else:
            labels = labels.to(DEVICE)

        # Get model outputs
        outputs = model(images)

        # Convert outputs to probabilities using softmax
        probs = torch.softmax(outputs, dim=1)

        # Get predicted class (highest score)
        _, predicted = torch.max(outputs, 1)

        # Store results
        all_predictions.extend(
            predicted.cpu().numpy())
        all_true_labels.extend(
            labels.cpu().numpy())
        all_probabilities.extend(
            probs.cpu().numpy())

        print(f"  Batch {batch_idx+1}/"
              f"{len(test_loader)} done")

all_predictions  = np.array(all_predictions)
all_true_labels  = np.array(all_true_labels)
all_probabilities = np.array(all_probabilities)

# ============================================================
# STEP 7: Calculate overall test accuracy
# ============================================================
correct    = (all_predictions == all_true_labels).sum()
test_acc   = 100.0 * correct / len(all_true_labels)

print(f"\n{'='*50}")
print(f"TEST SET RESULTS")
print(f"{'='*50}")
print(f"Total test images : {len(all_true_labels)}")
print(f"Correct           : {correct}")
print(f"Wrong             : {len(all_true_labels)-correct}")
print(f"Test Accuracy     : {test_acc:.2f}%")
print(f"{'='*50}")

# ============================================================
# STEP 8: Per-class breakdown
# ============================================================
print(f"\nPer-class results:")
for i, class_name in enumerate(CLASS_NAMES):
    # Find all images of this class
    class_mask  = (all_true_labels == i)
    class_total = class_mask.sum()
    class_correct = (
        (all_predictions == i) & class_mask).sum()
    class_acc = 100.0 * class_correct / class_total \
                if class_total > 0 else 0
    print(f"  {class_name:12s}: "
          f"{class_correct}/{class_total} correct "
          f"({class_acc:.1f}%)")

# ============================================================
# STEP 9: Precision, Recall, F1 score
# ============================================================
precision, recall, f1, support = (
    precision_recall_fscore_support(
        all_true_labels,
        all_predictions,
        average=None,
        labels=[0, 1, 2]))

print(f"\nDetailed metrics per class:")
print(f"{'Class':12s} {'Precision':>10} "
      f"{'Recall':>8} {'F1 Score':>10} "
      f"{'Support':>9}")
print("-" * 55)
for i, name in enumerate(CLASS_NAMES):
    print(f"{name:12s} {precision[i]:>10.3f} "
          f"{recall[i]:>8.3f} {f1[i]:>10.3f} "
          f"{int(support[i]):>9}")

# Full sklearn classification report
print(f"\nFull Classification Report:")
print(classification_report(
    all_true_labels,
    all_predictions,
    target_names=CLASS_NAMES))

# ============================================================
# STEP 10: Generate confusion matrix
# ============================================================
cm = confusion_matrix(
    all_true_labels, all_predictions)

print(f"Confusion Matrix (rows=true, cols=predicted):")
print(f"{'':12s}", end="")
for name in CLASS_NAMES:
    print(f"{name:>12s}", end="")
print()
for i, name in enumerate(CLASS_NAMES):
    print(f"{name:12s}", end="")
    for j in range(len(CLASS_NAMES)):
        print(f"{cm[i][j]:>12d}", end="")
    print()

# ============================================================
# STEP 11: Plot confusion matrix as colour heatmap
# ============================================================
fig, ax = plt.subplots(figsize=(8, 6))

# Use blue colour map — darker = more images
im = ax.imshow(cm, interpolation='nearest',
               cmap=plt.cm.Blues)
plt.colorbar(im, ax=ax)

# Add class labels on both axes
tick_marks = np.arange(len(CLASS_NAMES))
ax.set_xticks(tick_marks)
ax.set_yticks(tick_marks)
ax.set_xticklabels(CLASS_NAMES, fontsize=12)
ax.set_yticklabels(CLASS_NAMES, fontsize=12)

# Write numbers inside each cell
thresh = cm.max() / 2.0
for i in range(cm.shape[0]):
    for j in range(cm.shape[1]):
        # Diagonal = correct predictions (white text)
        # Off-diagonal = mistakes (black text)
        color = "white" if cm[i, j] > thresh \
                else "black"
        ax.text(j, i, str(cm[i, j]),
                ha="center", va="center",
                color=color, fontsize=14,
                fontweight='bold')

ax.set_ylabel('True Label', fontsize=13)
ax.set_xlabel('Predicted Label', fontsize=13)
ax.set_title(
    f'Confusion Matrix — Test Set\n'
    f'Test Accuracy: {test_acc:.2f}%  '
    f'(Total: {len(all_true_labels)} images)',
    fontsize=13)

plt.tight_layout()
cm_path = os.path.join(REPORT_PATH,
                        'day4_confusion_matrix.png')
plt.savefig(cm_path, dpi=150, bbox_inches='tight')
plt.show()
print(f"\nConfusion matrix saved to reports folder.")

# ============================================================
# STEP 12: Save all results to a text file
# ============================================================
results_path = os.path.join(
    REPORT_PATH, 'day4_test_results.txt')
with open(results_path, 'w') as f:
    f.write("TEST SET EVALUATION RESULTS\n")
    f.write("="*50 + "\n")
    f.write(f"Model         : MobileNet-V2\n")
    f.write(f"Dataset       : BUSI Breast Ultrasound\n")
    f.write(f"Test images   : {len(all_true_labels)}\n")
    f.write(f"Test accuracy : {test_acc:.2f}%\n")
    f.write(f"Correct       : {correct}\n")
    f.write(f"Wrong         : "
            f"{len(all_true_labels)-correct}\n\n")
    f.write("Per-class metrics:\n")
    f.write(f"{'Class':12s} {'Precision':>10} "
            f"{'Recall':>8} {'F1':>8}\n")
    f.write("-"*42 + "\n")
    for i, name in enumerate(CLASS_NAMES):
        f.write(f"{name:12s} {precision[i]:>10.3f} "
                f"{recall[i]:>8.3f} {f1[i]:>8.3f}\n")
    f.write("\n")
    f.write("Confusion Matrix:\n")
    f.write(f"{'':12s}")
    for name in CLASS_NAMES:
        f.write(f"{name:>12s}")
    f.write("\n")
    for i, name in enumerate(CLASS_NAMES):
        f.write(f"{name:12s}")
        for j in range(len(CLASS_NAMES)):
            f.write(f"{cm[i][j]:>12d}")
        f.write("\n")

print(f"Results saved : day4_test_results.txt")
print(f"\nDay 4 complete!")
print(f"Final test accuracy : {test_acc:.2f}%")