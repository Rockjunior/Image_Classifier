# Windows PowerShell equivalent of run_models_batch.sh
# Runs all three CNN models to test which provides the 'best' solution on pet images.

Write-Host "Running CNN model comparison on pet images..."
Write-Host "Note: This will download pre-trained models if not already cached (may take time)"
Write-Host ""

# Set working directory to data folder
Set-Location -Path "data"

# Run ResNet model
Write-Host "Running ResNet model..."
python check_images.py --dir pet_images --arch resnet --dogfile dognames.txt > resnet_pet-images.txt
Write-Host "ResNet results saved to resnet_pet-images.txt"

# Run AlexNet model  
Write-Host "Running AlexNet model..."
python check_images.py --dir pet_images --arch alexnet --dogfile dognames.txt > alexnet_pet-images.txt
Write-Host "AlexNet results saved to alexnet_pet-images.txt"

# Run VGG model
Write-Host "Running VGG model..."
python check_images.py --dir pet_images --arch vgg --dogfile dognames.txt > vgg_pet-images.txt
Write-Host "VGG results saved to vgg_pet-images.txt"

Write-Host ""
Write-Host "All models completed! Check the .txt files for results."
Set-Location -Path ".."
