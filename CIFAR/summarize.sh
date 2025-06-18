


# bash summarize.sh > out/energy_summary.txt
# python summarize.py --experiment MNIST --regime Balanced --method energy
# python summarize.py --experiment FashionMNIST --regime Balanced --method energy
# python summarize.py --experiment MNIST-FashionMNIST --regime Balanced --method energy
# python summarize.py --experiment SVHN --regime Balanced --method energy
# python summarize.py --experiment CIFAR10-SVHN --regime Balanced --method energy

# python summarize.py --experiment FashionMNIST --regime Imbalanced --method energy
# python summarize.py --experiment SVHN --regime Imbalanced --method energy


# bash summarize.sh > out/oe_summary.txt
python summarize.py --experiment MNIST --regime Balanced --method OE
python summarize.py --experiment FashionMNIST --regime Balanced --method OE
python summarize.py --experiment MNIST-FashionMNIST --regime Balanced --method OE
python summarize.py --experiment SVHN --regime Balanced --method OE
python summarize.py --experiment CIFAR10-SVHN --regime Balanced --method OE

python summarize.py --experiment FashionMNIST --regime Imbalanced --method OE
python summarize.py --experiment SVHN --regime Imbalanced --method OE

# bash summarize.sh > out/energy_baseline_summary.txt
# python summarize.py --experiment MNIST --regime Balanced --method energy --energy_baseline
# python summarize.py --experiment FashionMNIST --regime Balanced --method energy --energy_baseline
# python summarize.py --experiment MNIST-FashionMNIST --regime Balanced --method energy --energy_baseline
# python summarize.py --experiment SVHN --regime Balanced --method energy --energy_baseline
# python summarize.py --experiment CIFAR10-SVHN --regime Balanced --method energy --energy_baseline