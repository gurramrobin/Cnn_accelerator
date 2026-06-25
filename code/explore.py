import os
import matplotlib.pyplot as plt
from PIL import Image

# Step 1: Define where your dataset is
data_path = r"C:\Users\LAB2_PC12\Desktop\CHINNA\NIELIT\data\Dataset_BUSI"

# Step 2: List the class folders
classes = os.listdir(data_path)
print("Classes found:", classes)

# Step 3: Count images in each class
print("\n--- Image counts per class ---")
for class_name in classes:
    class_folder = os.path.join(data_path, class_name)
    if os.path.isdir(class_folder):
        images = [f for f in os.listdir(class_folder) 
                  if f.endswith('.png') or f.endswith('.jpg')]
        print(f"  {class_name}: {len(images)} images")

# Step 4: Look at one image from each class
fig, axes = plt.subplots(1, 3, figsize=(12, 4))
fig.suptitle("Sample images from each class", fontsize=14)

for i, class_name in enumerate(classes[:3]):
    class_folder = os.path.join(data_path, class_name)
    if os.path.isdir(class_folder):
        images = [f for f in os.listdir(class_folder) 
                  if f.endswith('.png') or f.endswith('.jpg')]
        if images:
            img_path = os.path.join(class_folder, images[0])
            img = Image.open(img_path)
            print(f"\n{class_name} — Image size: {img.size}, Mode: {img.mode}")
            axes[i].imshow(img, cmap='gray')
            axes[i].set_title(class_name)
            axes[i].axis('off')

plt.tight_layout()
plt.savefig(r"C:\Users\LAB2_PC12\Desktop\CHINNA\NIELIT\reports\day1_sample_images.png")
plt.show()
print("\nSaved sample images to reports folder.")