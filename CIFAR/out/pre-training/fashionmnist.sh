Tesla V100-PCIE-16GB
Namespace(dataset='FashionMNIST', max_epochs=100, lr=0.001, opt='sgd')
Downloading http://fashion-mnist.s3-website.eu-central-1.amazonaws.com/train-images-idx3-ubyte.gz
Downloading http://fashion-mnist.s3-website.eu-central-1.amazonaws.com/train-images-idx3-ubyte.gz to ./Datasets/FashionMNIST/raw/train-images-idx3-ubyte.gz
  0%|          | 0/26421880 [00:00<?, ?it/s]  0%|          | 65536/26421880 [00:00<01:21, 324999.68it/s]  0%|          | 131072/26421880 [00:00<00:58, 450886.36it/s]  1%|          | 262144/26421880 [00:00<00:34, 749161.84it/s]  2%|▏         | 491520/26421880 [00:00<00:20, 1247397.99it/s]  4%|▎         | 983040/26421880 [00:00<00:10, 2379924.29it/s]  7%|▋         | 1966080/26421880 [00:00<00:05, 4604168.39it/s] 15%|█▍        | 3899392/26421880 [00:00<00:02, 8914215.67it/s] 25%|██▌       | 6684672/26421880 [00:00<00:01, 14565323.67it/s] 34%|███▍      | 9043968/26421880 [00:01<00:01, 16997023.39it/s] 45%|████▍     | 11829248/26421880 [00:01<00:00, 19829088.13it/s] 56%|█████▋    | 14876672/26421880 [00:01<00:00, 22555930.21it/s] 68%|██████▊   | 17989632/26421880 [00:01<00:00, 24514506.67it/s] 79%|███████▉  | 20905984/26421880 [00:01<00:00, 25420337.37it/s] 91%|█████████ | 23920640/26421880 [00:01<00:00, 26289441.68it/s]100%|██████████| 26421880/26421880 [00:01<00:00, 16537318.02it/s]
Extracting ./Datasets/FashionMNIST/raw/train-images-idx3-ubyte.gz to ./Datasets/FashionMNIST/raw

Downloading http://fashion-mnist.s3-website.eu-central-1.amazonaws.com/train-labels-idx1-ubyte.gz
Downloading http://fashion-mnist.s3-website.eu-central-1.amazonaws.com/train-labels-idx1-ubyte.gz to ./Datasets/FashionMNIST/raw/train-labels-idx1-ubyte.gz
  0%|          | 0/29515 [00:00<?, ?it/s]100%|██████████| 29515/29515 [00:00<00:00, 33385890.66it/s]
Extracting ./Datasets/FashionMNIST/raw/train-labels-idx1-ubyte.gz to ./Datasets/FashionMNIST/raw

Downloading http://fashion-mnist.s3-website.eu-central-1.amazonaws.com/t10k-images-idx3-ubyte.gz
Downloading http://fashion-mnist.s3-website.eu-central-1.amazonaws.com/t10k-images-idx3-ubyte.gz to ./Datasets/FashionMNIST/raw/t10k-images-idx3-ubyte.gz
  0%|          | 0/4422102 [00:00<?, ?it/s]  1%|          | 32768/4422102 [00:00<00:14, 304326.35it/s]  1%|▏         | 65536/4422102 [00:00<00:14, 303736.09it/s]  3%|▎         | 131072/4422102 [00:00<00:09, 441960.81it/s]  5%|▌         | 229376/4422102 [00:00<00:06, 627408.62it/s] 11%|█         | 491520/4422102 [00:00<00:03, 1275959.15it/s] 21%|██▏       | 950272/4422102 [00:00<00:01, 2285378.41it/s] 44%|████▎     | 1933312/4422102 [00:00<00:00, 4510708.32it/s] 87%|████████▋ | 3833856/4422102 [00:00<00:00, 8670124.14it/s]100%|██████████| 4422102/4422102 [00:00<00:00, 5085828.48it/s]
Extracting ./Datasets/FashionMNIST/raw/t10k-images-idx3-ubyte.gz to ./Datasets/FashionMNIST/raw

Downloading http://fashion-mnist.s3-website.eu-central-1.amazonaws.com/t10k-labels-idx1-ubyte.gz
Downloading http://fashion-mnist.s3-website.eu-central-1.amazonaws.com/t10k-labels-idx1-ubyte.gz to ./Datasets/FashionMNIST/raw/t10k-labels-idx1-ubyte.gz
  0%|          | 0/5148 [00:00<?, ?it/s]100%|██████████| 5148/5148 [00:00<00:00, 66233978.50it/s]
ic| len(dset): 60000
ic| len(dset): 10000
ic| 'Model Checkpoint Saved!'
Extracting ./Datasets/FashionMNIST/raw/t10k-labels-idx1-ubyte.gz to ./Datasets/FashionMNIST/raw

  0%|          | 0/63 [00:00<?, ?it/s]  2%|▏         | 1/63 [00:00<00:20,  3.09it/s]  8%|▊         | 5/63 [00:00<00:04, 13.63it/s] 14%|█▍        | 9/63 [00:00<00:02, 20.58it/s] 21%|██        | 13/63 [00:00<00:01, 25.31it/s] 27%|██▋       | 17/63 [00:00<00:01, 28.54it/s] 33%|███▎      | 21/63 [00:00<00:01, 30.80it/s] 40%|███▉      | 25/63 [00:01<00:01, 32.40it/s] 46%|████▌     | 29/63 [00:01<00:01, 33.41it/s] 52%|█████▏    | 33/63 [00:01<00:00, 34.24it/s] 59%|█████▊    | 37/63 [00:01<00:00, 34.81it/s] 65%|██████▌   | 41/63 [00:01<00:00, 35.23it/s] 71%|███████▏  | 45/63 [00:01<00:00, 35.53it/s] 78%|███████▊  | 49/63 [00:01<00:00, 35.72it/s] 84%|████████▍ | 53/63 [00:01<00:00, 35.88it/s] 90%|█████████ | 57/63 [00:01<00:00, 35.99it/s] 97%|█████████▋| 61/63 [00:01<00:00, 36.07it/s]100%|██████████| 63/63 [00:02<00:00, 30.90it/s]
0.18700396825396826
2.0693059989384244
0.18687499999999993
  0%|          | 0/100 [00:00<?, ?it/s]  1%|          | 1/100 [00:35<58:36, 35.52s/it]  2%|▏         | 2/100 [01:11<58:01, 35.52s/it]  3%|▎         | 3/100 [01:46<57:22, 35.49s/it]