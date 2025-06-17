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
  0%|          | 0/100 [00:00<?, ?it/s]  1%|          | 1/100 [00:35<58:36, 35.52s/it]  2%|▏         | 2/100 [01:11<58:01, 35.52s/it]  3%|▎         | 3/100 [01:46<57:22, 35.49s/it]  4%|▍         | 4/100 [02:21<56:47, 35.49s/it]  5%|▌         | 5/100 [02:57<56:11, 35.49s/it]  6%|▌         | 6/100 [03:32<55:35, 35.48s/it]  7%|▋         | 7/100 [04:08<55:00, 35.49s/it]  8%|▊         | 8/100 [04:43<54:24, 35.48s/it]  9%|▉         | 9/100 [05:19<53:49, 35.49s/it] 10%|█         | 10/100 [05:54<53:13, 35.48s/it] 11%|█         | 11/100 [06:30<52:38, 35.49s/it] 12%|█▏        | 12/100 [07:05<52:03, 35.49s/it] 13%|█▎        | 13/100 [07:41<51:26, 35.48s/it] 14%|█▍        | 14/100 [08:16<50:52, 35.50s/it] 15%|█▌        | 15/100 [08:52<50:15, 35.48s/it] 16%|█▌        | 16/100 [09:27<49:41, 35.50s/it] 17%|█▋        | 17/100 [10:03<49:05, 35.49s/it] 18%|█▊        | 18/100 [10:38<48:30, 35.49s/it] 19%|█▉        | 19/100 [11:14<47:54, 35.49s/it] 20%|██        | 20/100 [11:49<47:19, 35.49s/it] 21%|██        | 21/100 [12:25<46:43, 35.49s/it] 22%|██▏       | 22/100 [13:00<46:07, 35.48s/it] 23%|██▎       | 23/100 [13:36<45:33, 35.50s/it] 24%|██▍       | 24/100 [14:11<44:56, 35.48s/it] 25%|██▌       | 25/100 [14:47<44:21, 35.49s/it] 26%|██▌       | 26/100 [15:22<43:45, 35.49s/it] 27%|██▋       | 27/100 [15:58<43:09, 35.48s/it] 28%|██▊       | 28/100 [16:33<42:35, 35.49s/it] 29%|██▉       | 29/100 [17:09<41:59, 35.48s/it] 30%|███       | 30/100 [17:44<41:24, 35.49s/it] 31%|███       | 31/100 [18:20<40:48, 35.48s/it] 32%|███▏      | 32/100 [18:55<40:12, 35.48s/it] 33%|███▎      | 33/100 [19:31<39:37, 35.49s/it] 34%|███▍      | 34/100 [20:06<39:01, 35.48s/it] 35%|███▌      | 35/100 [20:42<38:26, 35.49s/it] 36%|███▌      | 36/100 [21:17<37:50, 35.48s/it] 37%|███▋      | 37/100 [21:53<37:15, 35.49s/it] 38%|███▊      | 38/100 [22:28<36:39, 35.48s/it] 39%|███▉      | 39/100 [23:03<36:04, 35.49s/it] 40%|████      | 40/100 [23:39<35:29, 35.49s/it] 41%|████      | 41/100 [24:14<34:53, 35.48s/it] 42%|████▏     | 42/100 [24:50<34:18, 35.49s/it] 43%|████▎     | 43/100 [25:25<33:42, 35.48s/it] 44%|████▍     | 44/100 [26:01<33:07, 35.49s/it] 45%|████▌     | 45/100 [26:36<32:31, 35.48s/it] 46%|████▌     | 46/100 [27:12<31:55, 35.48s/it] 47%|████▋     | 47/100 [27:47<31:20, 35.49s/it] 48%|████▊     | 48/100 [28:23<30:44, 35.48s/it] 49%|████▉     | 49/100 [28:58<30:10, 35.49s/it] 50%|█████     | 50/100 [29:34<29:34, 35.49s/it] 51%|█████     | 51/100 [30:09<28:58, 35.49s/it] 52%|█████▏    | 52/100 [30:45<28:23, 35.49s/it] 53%|█████▎    | 53/100 [31:20<27:47, 35.48s/it] 54%|█████▍    | 54/100 [31:56<27:12, 35.50s/it] 55%|█████▌    | 55/100 [32:31<26:36, 35.48s/it] 56%|█████▌    | 56/100 [33:07<26:01, 35.50s/it] 57%|█████▋    | 57/100 [33:42<25:25, 35.49s/it] 58%|█████▊    | 58/100 [34:18<24:50, 35.50s/it] 59%|█████▉    | 59/100 [34:53<24:15, 35.49s/it] 60%|██████    | 60/100 [35:29<23:39, 35.49s/it] 61%|██████    | 61/100 [36:04<23:04, 35.50s/it] 62%|██████▏   | 62/100 [36:40<22:28, 35.48s/it] 63%|██████▎   | 63/100 [37:15<21:53, 35.50s/it] 64%|██████▍   | 64/100 [37:51<21:17, 35.49s/it] 65%|██████▌   | 65/100 [38:26<20:42, 35.50s/it] 66%|██████▌   | 66/100 [39:02<20:06, 35.49s/it] 67%|██████▋   | 67/100 [39:37<19:31, 35.50s/it] 68%|██████▊   | 68/100 [40:13<18:55, 35.49s/it] 69%|██████▉   | 69/100 [40:48<18:20, 35.49s/it] 70%|███████   | 70/100 [41:24<17:44, 35.50s/it] 71%|███████   | 71/100 [41:59<17:09, 35.48s/it] 72%|███████▏  | 72/100 [42:35<16:34, 35.50s/it] 73%|███████▎  | 73/100 [43:10<15:58, 35.49s/it] 74%|███████▍  | 74/100 [43:46<15:22, 35.50s/it] 75%|███████▌  | 75/100 [44:21<14:47, 35.49s/it] 76%|███████▌  | 76/100 [44:57<14:11, 35.49s/it] 77%|███████▋  | 77/100 [45:32<13:36, 35.50s/it] 78%|███████▊  | 78/100 [46:08<13:00, 35.49s/it] 79%|███████▉  | 79/100 [46:43<12:25, 35.49s/it] 80%|████████  | 80/100 [47:19<11:49, 35.49s/it] 81%|████████  | 81/100 [47:54<11:14, 35.48s/it] 82%|████████▏ | 82/100 [48:30<10:38, 35.50s/it] 83%|████████▎ | 83/100 [49:05<10:03, 35.49s/it] 84%|████████▍ | 84/100 [49:41<09:28, 35.50s/it] 85%|████████▌ | 85/100 [50:16<08:52, 35.49s/it] 86%|████████▌ | 86/100 [50:52<08:16, 35.50s/it] 87%|████████▋ | 87/100 [51:27<07:41, 35.49s/it] 88%|████████▊ | 88/100 [52:03<07:05, 35.50s/it] 89%|████████▉ | 89/100 [52:38<06:30, 35.49s/it] 90%|█████████ | 90/100 [53:13<05:54, 35.48s/it] 91%|█████████ | 91/100 [53:49<05:19, 35.50s/it] 92%|█████████▏| 92/100 [54:24<04:43, 35.49s/it] 93%|█████████▎| 93/100 [55:00<04:08, 35.49s/it] 94%|█████████▍| 94/100 [55:35<03:32, 35.49s/it] 95%|█████████▌| 95/100 [56:11<02:57, 35.48s/it] 96%|█████████▌| 96/100 [56:46<02:21, 35.50s/it] 97%|█████████▋| 97/100 [57:22<01:46, 35.49s/it] 98%|█████████▊| 98/100 [57:57<01:10, 35.49s/it] 99%|█████████▉| 99/100 [58:33<00:35, 35.49s/it]100%|██████████| 100/100 [59:08<00:00, 35.49s/it]100%|██████████| 100/100 [59:08<00:00, 35.49s/it]
ic| 'Model Checkpoint Saved!'

Epoch  # 1 | training loss: 0.5554470585982004             | training acc: 0.7891875
Epoch  # 1 | validation loss: 0.3777149139888703             | validation acc: 0.863343253968254

Epoch  # 2 | training loss: 0.3071816045443217             | training acc: 0.8868125
Epoch  # 2 | validation loss: 0.3640505645483259             | validation acc: 0.8721478174603174

Epoch  # 3 | training loss: 0.2597835677266121             | training acc: 0.9046875
Epoch  # 3 | validation loss: 0.3044769248319051             | validation acc: 0.8887648809523809

Epoch  # 4 | training loss: 0.23100028562545777             | training acc: 0.9165416666666667
Epoch  # 4 | validation loss: 0.354360241265524             | validation acc: 0.8654513888888888

Epoch  # 5 | training loss: 0.21039231057961783             | training acc: 0.9235
Epoch  # 5 | validation loss: 0.2617315396903053             | validation acc: 0.9051339285714286

Epoch  # 6 | training loss: 0.19359993388255436             | training acc: 0.93
Epoch  # 6 | validation loss: 0.25341457022087915             | validation acc: 0.9081101190476191

Epoch  # 7 | training loss: 0.18001475842793782             | training acc: 0.934125
Epoch  # 7 | validation loss: 0.3140145301345795             | validation acc: 0.8949652777777778

Epoch  # 8 | training loss: 0.16977046979467075             | training acc: 0.9378958333333334
Epoch  # 8 | validation loss: 0.2603410495415566             | validation acc: 0.9099702380952381

Epoch  # 9 | training loss: 0.15501178391774495             | training acc: 0.9432291666666667
Epoch  # 9 | validation loss: 0.2651889086479232             | validation acc: 0.910094246031746

Epoch  # 10 | training loss: 0.14853094907601674             | training acc: 0.9456041666666667
Epoch  # 10 | validation loss: 0.2763246148824692             | validation acc: 0.9079861111111112

Epoch  # 11 | training loss: 0.13945466194550196             | training acc: 0.9498541666666667
Epoch  # 11 | validation loss: 0.3049124332647475             | validation acc: 0.8928571428571429

Epoch  # 12 | training loss: 0.1334527051548163             | training acc: 0.9522708333333333
Epoch  # 12 | validation loss: 0.24642963837536555             | validation acc: 0.9159226190476191

Epoch  # 13 | training loss: 0.12514832222958405             | training acc: 0.954875
Epoch  # 13 | validation loss: 0.2580157620093179             | validation acc: 0.9134424603174603

Epoch  # 14 | training loss: 0.12424751783410708             | training acc: 0.9545416666666666
Epoch  # 14 | validation loss: 0.24635038087292324             | validation acc: 0.9219990079365079

Epoch  # 15 | training loss: 0.11054564082622528             | training acc: 0.96
Epoch  # 15 | validation loss: 0.3080485388636589             | validation acc: 0.9058779761904762

Epoch  # 16 | training loss: 0.1075517266690731             | training acc: 0.9609166666666666
Epoch  # 16 | validation loss: 0.24678729782028805             | validation acc: 0.921875

Epoch  # 17 | training loss: 0.10684532192349434             | training acc: 0.9617708333333334
Epoch  # 17 | validation loss: 0.2986469737121037             | validation acc: 0.9031498015873016

Epoch  # 18 | training loss: 0.1029846126238505             | training acc: 0.962125
Epoch  # 18 | validation loss: 0.26647642041955677             | validation acc: 0.9136904761904762

Epoch  # 19 | training loss: 0.09484517166018486             | training acc: 0.9655833333333333
Epoch  # 19 | validation loss: 0.29198005156857626             | validation acc: 0.9083581349206349

Epoch  # 20 | training loss: 0.09456455380221208             | training acc: 0.9665208333333334
Epoch  # 20 | validation loss: 0.2593756335831824             | validation acc: 0.9151785714285714

Epoch  # 21 | training loss: 0.09333603006104628             | training acc: 0.9662083333333333
Epoch  # 21 | validation loss: 0.2600139749665109             | validation acc: 0.9122023809523809

Epoch  # 22 | training loss: 0.0897521460801363             | training acc: 0.9675833333333334
Epoch  # 22 | validation loss: 0.352983762347509             | validation acc: 0.8998015873015873

Epoch  # 23 | training loss: 0.085250939677159             | training acc: 0.9696875
Epoch  # 23 | validation loss: 0.26478285981076105             | validation acc: 0.9148065476190477

Epoch  # 24 | training loss: 0.0824183425878485             | training acc: 0.9713333333333334
Epoch  # 24 | validation loss: 0.2754908525754535             | validation acc: 0.9135664682539683

Epoch  # 25 | training loss: 0.08435050694396098             | training acc: 0.9692916666666667
Epoch  # 25 | validation loss: 0.2897014979805265             | validation acc: 0.9139384920634921

Epoch  # 26 | training loss: 0.08116724759091934             | training acc: 0.9704791666666667
Epoch  # 26 | validation loss: 0.2982668765480556             | validation acc: 0.9139384920634921

Epoch  # 27 | training loss: 0.07494870759546757             | training acc: 0.97325
Epoch  # 27 | validation loss: 0.3934612815815305             | validation acc: 0.8917410714285714

Epoch  # 28 | training loss: 0.07548631919423739             | training acc: 0.9727291666666666
Epoch  # 28 | validation loss: 0.28713575514063             | validation acc: 0.9186507936507936

Epoch  # 29 | training loss: 0.07228707230339447             | training acc: 0.9743958333333333
Epoch  # 29 | validation loss: 0.2984307614110765             | validation acc: 0.9162946428571429

Epoch  # 30 | training loss: 0.07418514371911684             | training acc: 0.9732291666666667
Epoch  # 30 | validation loss: 0.32811125095874544             | validation acc: 0.9000496031746031

Epoch  # 31 | training loss: 0.07125056001792351             | training acc: 0.9736666666666667
Epoch  # 31 | validation loss: 0.3010231241110771             | validation acc: 0.9156746031746031

Epoch  # 32 | training loss: 0.0692613525117437             | training acc: 0.9749166666666667
Epoch  # 32 | validation loss: 0.3037739661004808             | validation acc: 0.9119543650793651

Epoch  # 33 | training loss: 0.06653166933854421             | training acc: 0.9763333333333334
Epoch  # 33 | validation loss: 0.33940037268967854             | validation acc: 0.9089781746031746

Epoch  # 34 | training loss: 0.07376328413188457             | training acc: 0.973625
Epoch  # 34 | validation loss: 0.3545940572780276             | validation acc: 0.9069940476190477

Epoch  # 35 | training loss: 0.0685430618946751             | training acc: 0.9751875
Epoch  # 35 | validation loss: 0.314461386392987             | validation acc: 0.9105902777777778

Epoch  # 36 | training loss: 0.06549881005783875             | training acc: 0.97675
Epoch  # 36 | validation loss: 0.35733417315142496             | validation acc: 0.9012896825396826

Epoch  # 37 | training loss: 0.0668161928281188             | training acc: 0.9760833333333333
Epoch  # 37 | validation loss: 0.2760724893638066             | validation acc: 0.9151785714285714

Epoch  # 38 | training loss: 0.06819577410072088             | training acc: 0.9751875
Epoch  # 38 | validation loss: 0.3781824317716417             | validation acc: 0.8984375

Epoch  # 39 | training loss: 0.061995389588177206             | training acc: 0.9771458333333334
Epoch  # 39 | validation loss: 0.27539637058027205             | validation acc: 0.916046626984127

Epoch  # 40 | training loss: 0.06193496756752332             | training acc: 0.9777083333333333
Epoch  # 40 | validation loss: 0.3378982901100128             | validation acc: 0.9129464285714286

Epoch  # 41 | training loss: 0.059798515165845556             | training acc: 0.9782916666666667
Epoch  # 41 | validation loss: 0.37127061779536896             | validation acc: 0.9006696428571429

Epoch  # 42 | training loss: 0.06530349304899573             | training acc: 0.9768541666666667
Epoch  # 42 | validation loss: 0.37230055980266086             | validation acc: 0.9068700396825397

Epoch  # 43 | training loss: 0.0633603390827775             | training acc: 0.9768958333333333
Epoch  # 43 | validation loss: 0.29386770512376514             | validation acc: 0.9119543650793651

Epoch  # 44 | training loss: 0.05838349754114946             | training acc: 0.9786041666666667
Epoch  # 44 | validation loss: 0.38772095053914996             | validation acc: 0.9012896825396826

Epoch  # 45 | training loss: 0.06404099704697729             | training acc: 0.9771666666666666
Epoch  # 45 | validation loss: 0.28045237336366896             | validation acc: 0.9206349206349206

Epoch  # 46 | training loss: 0.05942625777547558             | training acc: 0.97825
Epoch  # 46 | validation loss: 0.3063604971246114             | validation acc: 0.916046626984127

Epoch  # 47 | training loss: 0.0661272246092558             | training acc: 0.9755416666666666
Epoch  # 47 | validation loss: 0.5094715006767757             | validation acc: 0.875

Epoch  # 48 | training loss: 0.057731920655816796             | training acc: 0.9792291666666667
Epoch  # 48 | validation loss: 0.2771078161303959             | validation acc: 0.9224950396825397

Epoch  # 49 | training loss: 0.05772644777223468             | training acc: 0.9791875
Epoch  # 49 | validation loss: 0.4406048612935202             | validation acc: 0.8978174603174603

Epoch  # 50 | training loss: 0.057532316888372105             | training acc: 0.9785208333333333
Epoch  # 50 | validation loss: 0.3414394548014989             | validation acc: 0.9143105158730159

Epoch  # 51 | training loss: 0.019920391057928404             | training acc: 0.994125
Epoch  # 51 | validation loss: 0.26392407718277167             | validation acc: 0.9334077380952381

Epoch  # 52 | training loss: 0.006772334665370484             | training acc: 0.9993333333333333
Epoch  # 52 | validation loss: 0.2746891433757449             | validation acc: 0.9347718253968254

Epoch  # 53 | training loss: 0.004373675141793986             | training acc: 0.9997708333333334
Epoch  # 53 | validation loss: 0.28280661669042373             | validation acc: 0.9345238095238095

Epoch  # 54 | training loss: 0.003040109945926815             | training acc: 1.0
Epoch  # 54 | validation loss: 0.2850130916469627             | validation acc: 0.9341517857142857

Epoch  # 55 | training loss: 0.0025621865304807823             | training acc: 1.0
Epoch  # 55 | validation loss: 0.2938155712234595             | validation acc: 0.9356398809523809

Epoch  # 56 | training loss: 0.002159030416359504             | training acc: 0.9999791666666666
Epoch  # 56 | validation loss: 0.29426130273985485             | validation acc: 0.9353918650793651

Epoch  # 57 | training loss: 0.0017913316290359945             | training acc: 1.0
Epoch  # 57 | validation loss: 0.2943161598273686             | validation acc: 0.9346478174603174

Epoch  # 58 | training loss: 0.001681015649694018             | training acc: 0.9999583333333333
Epoch  # 58 | validation loss: 0.3018480816649066             | validation acc: 0.9348958333333334

Epoch  # 59 | training loss: 0.001375869183257843             | training acc: 1.0
Epoch  # 59 | validation loss: 0.30874163692905787             | validation acc: 0.9352678571428571

Epoch  # 60 | training loss: 0.0013408765089310084             | training acc: 1.0
Epoch  # 60 | validation loss: 0.30802744733435766             | validation acc: 0.9340277777777778

Epoch  # 61 | training loss: 0.001242087102533939             | training acc: 1.0
Epoch  # 61 | validation loss: 0.30892514082647504             | validation acc: 0.9361359126984127

Epoch  # 62 | training loss: 0.0010757446972420438             | training acc: 1.0
Epoch  # 62 | validation loss: 0.30922901157348875             | validation acc: 0.9353918650793651

Epoch  # 63 | training loss: 0.000994057096152877             | training acc: 1.0
Epoch  # 63 | validation loss: 0.3137197487411045             | validation acc: 0.9350198412698413

Epoch  # 64 | training loss: 0.0009933506551509101             | training acc: 1.0
Epoch  # 64 | validation loss: 0.31203874499197043             | validation acc: 0.9352678571428571

Epoch  # 65 | training loss: 0.0009776597421538706             | training acc: 1.0
Epoch  # 65 | validation loss: 0.3090685914669718             | validation acc: 0.9353918650793651

Epoch  # 66 | training loss: 0.0009291323112944761             | training acc: 1.0
Epoch  # 66 | validation loss: 0.31483722596414504             | validation acc: 0.9357638888888888

Epoch  # 67 | training loss: 0.000878266910246263             | training acc: 1.0
Epoch  # 67 | validation loss: 0.31181400553101585             | validation acc: 0.9356398809523809

Epoch  # 68 | training loss: 0.0008405028514098376             | training acc: 1.0
Epoch  # 68 | validation loss: 0.3154420703945179             | validation acc: 0.935515873015873

Epoch  # 69 | training loss: 0.0008095184697303921             | training acc: 1.0
Epoch  # 69 | validation loss: 0.31375077307697324             | validation acc: 0.9357638888888888

Epoch  # 70 | training loss: 0.0007693148178514093             | training acc: 1.0
Epoch  # 70 | validation loss: 0.3166365230249034             | validation acc: 0.9350198412698413

Epoch  # 71 | training loss: 0.0007776269931346178             | training acc: 1.0
Epoch  # 71 | validation loss: 0.3172686056248725             | validation acc: 0.9343998015873016

Epoch  # 72 | training loss: 0.0007665493164289122             | training acc: 1.0
Epoch  # 72 | validation loss: 0.3184379048290707             | validation acc: 0.9352678571428571

Epoch  # 73 | training loss: 0.0006952218148314084             | training acc: 1.0
Epoch  # 73 | validation loss: 0.31488414179711116             | validation acc: 0.935515873015873

Epoch  # 74 | training loss: 0.000677261487658446             | training acc: 1.0
Epoch  # 74 | validation loss: 0.3181584414745134             | validation acc: 0.9361359126984127

Epoch  # 75 | training loss: 0.000675837099008883             | training acc: 1.0
Epoch  # 75 | validation loss: 0.32195354383143165             | validation acc: 0.9358878968253969

Epoch  # 76 | training loss: 0.0006413862123542155             | training acc: 1.0
Epoch  # 76 | validation loss: 0.31895163134923055             | validation acc: 0.9352678571428571

Epoch  # 77 | training loss: 0.0006483860389562324             | training acc: 1.0
Epoch  # 77 | validation loss: 0.3198931517582091             | validation acc: 0.9352678571428571

Epoch  # 78 | training loss: 0.0006359393685900917             | training acc: 1.0
Epoch  # 78 | validation loss: 0.32498855013695976             | validation acc: 0.935515873015873

Epoch  # 79 | training loss: 0.0006578842628902445             | training acc: 1.0
Epoch  # 79 | validation loss: 0.3208360518846247             | validation acc: 0.9353918650793651

Epoch  # 80 | training loss: 0.0006462862050781648             | training acc: 1.0
Epoch  # 80 | validation loss: 0.3259092921775485             | validation acc: 0.9350198412698413

Epoch  # 81 | training loss: 0.0006512851292112222             | training acc: 1.0
Epoch  # 81 | validation loss: 0.31636748604831244             | validation acc: 0.9352678571428571

Epoch  # 82 | training loss: 0.0006872038311169793             | training acc: 1.0
Epoch  # 82 | validation loss: 0.3218395272417674             | validation acc: 0.9366319444444444

Epoch  # 83 | training loss: 0.0006440421846928075             | training acc: 1.0
Epoch  # 83 | validation loss: 0.3192577196492089             | validation acc: 0.9346478174603174

Epoch  # 84 | training loss: 0.0006489088974970704             | training acc: 1.0
Epoch  # 84 | validation loss: 0.3175683254523883             | validation acc: 0.9350198412698413

Epoch  # 85 | training loss: 0.0006208933205731834             | training acc: 1.0
Epoch  # 85 | validation loss: 0.3201742298191502             | validation acc: 0.935515873015873

Epoch  # 86 | training loss: 0.0006595701658710216             | training acc: 1.0
Epoch  # 86 | validation loss: 0.3208208777128704             | validation acc: 0.9357638888888888

Epoch  # 87 | training loss: 0.0006587132525552685             | training acc: 1.0
Epoch  # 87 | validation loss: 0.32369894735396854             | validation acc: 0.9348958333333334

Epoch  # 88 | training loss: 0.0006493559772692             | training acc: 1.0
Epoch  # 88 | validation loss: 0.3204781813990502             | validation acc: 0.9347718253968254

Epoch  # 89 | training loss: 0.0006548620243556798             | training acc: 1.0
Epoch  # 89 | validation loss: 0.3199125175319967             | validation acc: 0.9357638888888888

Epoch  # 90 | training loss: 0.0006308504943735898             | training acc: 1.0
Epoch  # 90 | validation loss: 0.3202770209265134             | validation acc: 0.9358878968253969

Epoch  # 91 | training loss: 0.0006491236753839378             | training acc: 1.0
Epoch  # 91 | validation loss: 0.3263180490050997             | validation acc: 0.9353918650793651

Epoch  # 92 | training loss: 0.0006824658015587678             | training acc: 1.0
Epoch  # 92 | validation loss: 0.3226129731961659             | validation acc: 0.9347718253968254

Epoch  # 93 | training loss: 0.0006290307895590861             | training acc: 1.0
Epoch  # 93 | validation loss: 0.32429772177858956             | validation acc: 0.9343998015873016

Epoch  # 94 | training loss: 0.0006258944363022844             | training acc: 1.0
Epoch  # 94 | validation loss: 0.3285890892148018             | validation acc: 0.9356398809523809

Epoch  # 95 | training loss: 0.0006184453051925326             | training acc: 1.0
Epoch  # 95 | validation loss: 0.32211675660477745             | validation acc: 0.9347718253968254

Epoch  # 96 | training loss: 0.000643163631670177             | training acc: 1.0
Epoch  # 96 | validation loss: 0.3185416581848311             | validation acc: 0.9352678571428571

Epoch  # 97 | training loss: 0.0006286108698307847             | training acc: 1.0
Epoch  # 97 | validation loss: 0.32034987885327565             | validation acc: 0.9351438492063492

Epoch  # 98 | training loss: 0.0006283405924914405             | training acc: 1.0
Epoch  # 98 | validation loss: 0.3174284850321119             | validation acc: 0.9356398809523809

Epoch  # 99 | training loss: 0.0006365592189831659             | training acc: 1.0
Epoch  # 99 | validation loss: 0.32742885653934783             | validation acc: 0.9352678571428571

Epoch  # 100 | training loss: 0.00065279430251879             | training acc: 0.9999791666666666
Epoch  # 100 | validation loss: 0.3218984029122761             | validation acc: 0.9345238095238095
  0%|          | 0/63 [00:00<?, ?it/s]  6%|▋         | 4/63 [00:00<00:01, 39.78it/s] 13%|█▎        | 8/63 [00:00<00:01, 39.82it/s] 19%|█▉        | 12/63 [00:00<00:01, 39.85it/s] 25%|██▌       | 16/63 [00:00<00:01, 39.85it/s] 32%|███▏      | 20/63 [00:00<00:01, 39.87it/s] 38%|███▊      | 24/63 [00:00<00:00, 39.87it/s] 44%|████▍     | 28/63 [00:00<00:00, 39.87it/s] 51%|█████     | 32/63 [00:00<00:00, 39.86it/s] 57%|█████▋    | 36/63 [00:00<00:00, 39.86it/s] 63%|██████▎   | 40/63 [00:01<00:00, 39.86it/s] 70%|██████▉   | 44/63 [00:01<00:00, 39.87it/s] 76%|███████▌  | 48/63 [00:01<00:00, 39.87it/s] 83%|████████▎ | 52/63 [00:01<00:00, 39.87it/s] 89%|████████▉ | 56/63 [00:01<00:00, 39.87it/s] 95%|█████████▌| 60/63 [00:01<00:00, 39.88it/s]100%|██████████| 63/63 [00:01<00:00, 40.15it/s]
0.9350198412698413
0.3187891078728532
0.9346249999999999
