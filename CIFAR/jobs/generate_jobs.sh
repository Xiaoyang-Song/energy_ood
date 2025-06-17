

# Energy
python jobs/generate_jobs.py --regime Balanced --exp MNIST --dir MNIST --method energy
python jobs/generate_jobs.py --regime Balanced --exp FashionMNIST --dir FashionMNIST --method energy
python jobs/generate_jobs.py --regime Balanced --exp MNIST-FashionMNIST --dir MNIST-FashionMNIST --method energy
python jobs/generate_jobs.py --regime Balanced --exp SVHN --dir SVHN --method energy
python jobs/generate_jobs.py --regime Balanced --exp CIFAR10-SVHN --dir CIFAR10-SVHN --method energy

python jobs/generate_jobs.py --regime Imbalanced --exp FashionMNIST --dir FashionMNIST-R2 --method energy
python jobs/generate_jobs.py --regime Imbalanced --exp SVHN --dir SVHN-R2 --method energy

# OE
python jobs/generate_jobs.py --regime Balanced --exp MNIST --dir MNIST --method OE
python jobs/generate_jobs.py --regime Balanced --exp FashionMNIST --dir FashionMNIST --method OE
python jobs/generate_jobs.py --regime Balanced --exp MNIST-FashionMNIST --dir MNIST-FashionMNIST --method OE
python jobs/generate_jobs.py --regime Balanced --exp SVHN --dir SVHN --method OE
python jobs/generate_jobs.py --regime Balanced --exp CIFAR10-SVHN --dir CIFAR10-SVHN --method OE

python jobs/generate_jobs.py --regime Imbalanced --exp FashionMNIST --dir FashionMNIST-R2 --method OE
python jobs/generate_jobs.py --regime Imbalanced --exp SVHN --dir SVHN-R2 --method OE
