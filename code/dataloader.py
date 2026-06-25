import os
import matplotlib.pyplot as plt
from PIL import Image
import torch
from torch.utils.data import Dataset, DataLoader
from torchvision import transforms
import numpy as np

# ============================================================
# STEP 1: Define paths and settings
# ============================================================
DATA_PATH = r"C:\Users\LAB2_PC12\Desktop\CHINNA\NIELIT\data\Dataset_BUSI"
BATCH_SIZE = 16
IMAGE_SIZE = 224
NUM_WORKERS = 0   # keep 0 on Windows to avoid errors

# Class names and their integer labels
# 0 = benign, 1 = malignant, 2 = normal
CLASS_NAMES = ['benign', 'malignant', 'normal']

# ============================================================
# STEP 2: Create custom Dataset class
# ============================================================
class BUSIDataset(Dataset):
    """
    Custom PyTorch Dataset for the BUSI breast ultrasound dataset.
    Automatically filters out mask images.
    """
    def __init__(self, data_path, class_names, transform=None):
        self.transform = transform
        self.image_paths = []   # will store full path to each image
        self.labels = []        # will store integer label for each image
        
        # Walk through each class folder and collect real images only
        for label_idx, class_name in enumerate(class_names):
            class_folder = os.path.join(data_path, class_name)
            
            if not os.path.isdir(class_folder):
                print(f"Warning: folder not found: {class_folder}")
                continue
            
            all_files = os.listdir(class_folder)
            
            for filename in all_files:
                # FILTER: skip mask images (contain 'mask' in filename)
                if 'mask' in filename.lower():
                    continue
                
                # FILTER: only accept image files
                if not (filename.endswith('.png') or 
                        filename.endswith('.jpg') or 
                        filename.endswith('.jpeg')):
                    continue
                
                # Add to our lists
                full_path = os.path.join(class_folder, filename)
                self.image_paths.append(full_path)
                self.labels.append(label_idx)
        
        print(f"Dataset loaded: {len(self.image_paths)} real images total")
    
    def __len__(self):
        # PyTorch needs this: returns total number of images
        return len(self.image_paths)
    
    def __getitem__(self, idx):
        # PyTorch needs this: returns one image and its label
        img_path = self.image_paths[idx]
        label = self.labels[idx]
        
        # Open image
        image = Image.open(img_path).convert('RGB')
        
        # Apply transforms (resize, normalise, augment)
        if self.transform:
            image = self.transform(image)
        
        return image, label

# ============================================================
# STEP 3: Define transforms (preprocessing + augmentation)
# ============================================================

# Training transforms: resize + augmentation + normalise
train_transform = transforms.Compose([
    transforms.Resize((IMAGE_SIZE, IMAGE_SIZE)),
    transforms.RandomHorizontalFlip(p=0.5),
    transforms.RandomRotation(degrees=15),
    transforms.ColorJitter(brightness=0.2, contrast=0.2),
    transforms.ToTensor(),
    transforms.Normalize(mean=[0.485, 0.456, 0.406],
                         std=[0.229, 0.224, 0.225])
])

# Validation/Test transforms: only resize + normalise (NO augmentation)
val_transform = transforms.Compose([
    transforms.Resize((IMAGE_SIZE, IMAGE_SIZE)),
    transforms.ToTensor(),
    transforms.Normalize(mean=[0.485, 0.456, 0.406],
                         std=[0.229, 0.224, 0.225])
])

# ============================================================
# STEP 4: Load full dataset then split into train/val/test
# ============================================================
full_dataset = BUSIDataset(DATA_PATH, CLASS_NAMES, transform=None)

# Count total images
total = len(full_dataset)
train_size = int(0.70 * total)   # 70% for training
val_size   = int(0.15 * total)   # 15% for validation
test_size  = total - train_size - val_size  # remaining 15% for test

print(f"\nSplit sizes:")
print(f"  Total images : {total}")
print(f"  Training     : {train_size}")
print(f"  Validation   : {val_size}")
print(f"  Test         : {test_size}")

# Random split (set seed for reproducibility)
torch.manual_seed(42)
train_dataset, val_dataset, test_dataset = torch.utils.data.random_split(
    full_dataset, [train_size, val_size, test_size]
)

# Apply correct transforms to each split
train_dataset.dataset.transform = train_transform
val_dataset.dataset.transform   = val_transform
test_dataset.dataset.transform  = val_transform

# ============================================================
# STEP 5: Count images per class (check class balance)
# ============================================================
print(f"\nClass distribution in FULL dataset:")
label_counts = [0, 0, 0]
for _, label in full_dataset:
    label_counts[label] += 1

for i, class_name in enumerate(CLASS_NAMES):
    pct = 100 * label_counts[i] / total
    print(f"  {class_name:12s}: {label_counts[i]:4d} images  ({pct:.1f}%)")

# ============================================================
# STEP 6: Compute class weights for imbalanced training
# ============================================================
# Because benign >> malignant >> normal, we give higher weight
# to underrepresented classes during training
class_weights = [total / (3 * count) for count in label_counts]
print(f"\nClass weights (for handling imbalance):")
for i, name in enumerate(CLASS_NAMES):
    print(f"  {name:12s}: weight = {class_weights[i]:.3f}")

# ============================================================
# STEP 7: Create DataLoaders
# ============================================================
train_loader = DataLoader(
    train_dataset,
    batch_size=BATCH_SIZE,
    shuffle=True,           # shuffle training data every epoch
    num_workers=NUM_WORKERS
)

val_loader = DataLoader(
    val_dataset,
    batch_size=BATCH_SIZE,
    shuffle=False,
    num_workers=NUM_WORKERS
)

test_loader = DataLoader(
    test_dataset,
    batch_size=BATCH_SIZE,
    shuffle=False,
    num_workers=NUM_WORKERS
)

print(f"\nDataLoaders created:")
print(f"  Train batches : {len(train_loader)}")
print(f"  Val batches   : {len(val_loader)}")
print(f"  Test batches  : {len(test_loader)}")

# ============================================================
# STEP 8: Visualise one batch to verify everything works
# ============================================================
# Get one batch from training loader
images_batch, labels_batch = next(iter(train_loader))

print(f"\nBatch verification:")
print(f"  Image tensor shape : {images_batch.shape}")
print(f"  Labels             : {labels_batch.tolist()}")
print(f"  Pixel value range  : {images_batch.min():.3f} to {images_batch.max():.3f}")

# Display 8 images from the batch
fig, axes = plt.subplots(2, 4, figsize=(14, 7))
fig.suptitle("Sample preprocessed training images (after resize + augment)", fontsize=13)

# ImageNet normalisation reversal for display
inv_mean = [-0.485/0.229, -0.456/0.224, -0.406/0.225]
inv_std  = [1/0.229, 1/0.224, 1/0.225]
inv_norm = transforms.Normalize(mean=inv_mean, std=inv_std)

for i, ax in enumerate(axes.flatten()):
    if i < len(images_batch):
        img_tensor = inv_norm(images_batch[i])
        img_numpy  = img_tensor.permute(1, 2, 0).numpy()
        img_numpy  = np.clip(img_numpy, 0, 1)
        label_name = CLASS_NAMES[labels_batch[i].item()]
        ax.imshow(img_numpy)
        ax.set_title(label_name, fontsize=10,
                     color='red' if label_name=='malignant' 
                     else 'orange' if label_name=='benign' 
                     else 'green')
        ax.axis('off')

plt.tight_layout()
plt.savefig(r"C:\Users\LAB2_PC12\Desktop\CHINNA\NIELIT\reports\day2_sample_batch.png")
plt.show()
print("\nSaved batch visualisation to reports folder.")

# ============================================================
# STEP 9: Save dataset info for use in training tomorrow
# ============================================================
import json
dataset_info = {
    'total_images'  : total,
    'train_size'    : train_size,
    'val_size'      : val_size,
    'test_size'     : test_size,
    'class_names'   : CLASS_NAMES,
    'class_counts'  : label_counts,
    'class_weights' : class_weights,
    'image_size'    : IMAGE_SIZE,
    'batch_size'    : BATCH_SIZE
}
with open(r"C:\Users\LAB2_PC12\Desktop\CHINNA\NIELIT\code\dataset_info.json", 'w') as f:
    json.dump(dataset_info, f, indent=2)
print("Saved dataset_info.json — will be used in Day 3 training.")