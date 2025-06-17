#!/bin/bash

#SBATCH --account=jhjin1
#SBATCH --job-name=CS
#SBATCH --mail-user=xysong@umich.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --nodes=1
#SBATCH --partition=gpu
#SBATCH --gpus=1
#SBATCH --mem-per-gpu=16GB
#SBATCH --time=4:00:00
#SBATCH --output=/scratch/sunwbgt_root/sunwbgt98/xysong/energy_ood/CIFAR/out/pre-training/cifar10-svhn.log


python classifier_train.py --dataset CIFAR10-SVHN --max_epochs 300 --lr 0.1 --opt sgd