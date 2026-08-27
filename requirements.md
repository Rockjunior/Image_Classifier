# Project Requirements

## Python Dependencies
- torch
- torchvision
- pillow
- numpy

## Setup Instructions
1. Create virtual environment: `python -m venv venv`
2. Activate (PowerShell): `.\venv\Scripts\Activate.ps1`
3. Install dependencies: `pip install torch torchvision pillow`
4. Deactivate: `deactivate`

## Project Overview
This project is an image classification system for a city dog show. It uses pre-trained CNN models (ResNet, AlexNet, VGG) to classify pet images and compare the results against known labels.