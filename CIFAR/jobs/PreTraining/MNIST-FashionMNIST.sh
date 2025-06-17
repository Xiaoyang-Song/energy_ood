#!/bin/bash

#SBATCH --account=jhjin1
#SBATCH --job-name=MFM
#SBATCH --mail-user=xysong@umich.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --nodes=1
#SBATCH --partition=gpu
#SBATCH --gpus=1
#SBATCH --mem-per-gpu=16GB
#SBATCH --time=4:00:00
#SBATCH --output=/scratch/sunwbgt_root/sunwbgt98/xysong/energy_ood/CIFAR/out/pre-training/mnist-fashionmnist.log


python classifier_train.py --dataset MNIST-FashionMNIST --max_epochs 100 --lr 0.001 --opt sgd