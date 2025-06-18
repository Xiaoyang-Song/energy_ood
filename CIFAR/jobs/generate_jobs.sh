

# Energy
# python jobs/generate_jobs.py --regime Balanced --exp MNIST --dir MNIST --method energy --time "00:15:00"
# python jobs/generate_jobs.py --regime Balanced --exp FashionMNIST --dir FashionMNIST --method energy --time "00:15:00"
# python jobs/generate_jobs.py --regime Balanced --exp MNIST-FashionMNIST --dir MNIST-FashionMNIST --method energy --time "00:30:00"
# python jobs/generate_jobs.py --regime Balanced --exp SVHN --dir SVHN --method energy --time "00:30:00"
python jobs/generate_jobs.py --regime Balanced --exp CIFAR10-SVHN --dir CIFAR10-SVHN --method energy --time "1:30:00"

# python jobs/generate_jobs.py --regime Imbalanced --exp FashionMNIST --dir FashionMNIST-R2 --method energy  --time "00:15:00"
# python jobs/generate_jobs.py --regime Imbalanced --exp SVHN --dir SVHN-R2 --method energy  --time "00:30:00"

# OE
# python jobs/generate_jobs.py --regime Balanced --exp MNIST --dir MNIST --method OE  --time "00:15:00" 
# python jobs/generate_jobs.py --regime Balanced --exp FashionMNIST --dir FashionMNIST --method OE  --time "00:15:00"
# python jobs/generate_jobs.py --regime Balanced --exp MNIST-FashionMNIST --dir MNIST-FashionMNIST --method OE  --time "00:30:00"
# python jobs/generate_jobs.py --regime Balanced --exp SVHN --dir SVHN --method OE  --time "00:30:00"
python jobs/generate_jobs.py --regime Balanced --exp CIFAR10-SVHN --dir CIFAR10-SVHN --method OE  --time "1:30:00"

# python jobs/generate_jobs.py --regime Imbalanced --exp FashionMNIST --dir FashionMNIST-R2 --method OE  --time "00:15:00"
# python jobs/generate_jobs.py --regime Imbalanced --exp SVHN --dir SVHN-R2 --method OE  --time "00:30:00"
