#!/bin/bash

#SBATCH --account=sunwbgt0
#SBATCH --job-name=j512
#SBATCH --mail-user=xysong@umich.edu
#SBATCH --mail-type=BEGIN,END,FAIL
#SBATCH --nodes=1
#SBATCH --partition=gpu
#SBATCH --gpus=1
#SBATCH --mem-per-gpu=16GB
#SBATCH --time=4:00:00
#SBATCH --output=/scratch/sunwbgt_root/sunwbgt98/xysong/energy_ood/CIFAR/out/energy/FashionMNIST-Balanced/512.log

python train.py --dataset FashionMNIST --score energy --n_ood 512 --regime Balanced --epochs 100
python test.py --dataset FashionMNIST --score energy --num_to_avg 5 --type energy --ft_n 512 --ft_epochs 99 --regime Balanced
