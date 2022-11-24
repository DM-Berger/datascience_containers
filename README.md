- [Apptainer (Singularity) Container Build Scripts for Data Science and Deep Learning](#apptainer-singularity-container-build-scripts-for-data-science-and-deep-learning)
  - [CentOS 7.9.2009 (Recommended)](#centos-792009-recommended)
    - [Included Python Libraries](#included-python-libraries)
      - [ML](#ml)
      - [Other Data Science](#other-data-science)
      - [General](#general)
      - [PyTorch](#pytorch)
      - [All Python Libraries](#all-python-libraries)
    - [Included Command Line Tools](#included-command-line-tools)
    - [Build Steps](#build-steps)


# Apptainer (Singularity) Container Build Scripts for Data Science and Deep Learning

This repo contains various scripts to help automate and reproduce the building of
Apptainer containers for reliably running deep learning and ML code (both on and off
of Compute Canada clusters).

You will need a Linux machine capable of installing `apptainer` in order to build
the containers here.

## CentOS 7.9.2009 (Recommended)

Compute Canada uses this OS on their clusters, so this is the recommended container to
run there.

### Included Python Libraries

#### ML

```
scikit-image==0.19.3
scikit-learn==1.1.0
scipy==1.7.2
numpy==1.22.3
pandas==1.5.1
```

#### Other Data Science

```
seaborn==0.12.0
matplotlib==3.5.2
```

#### General

```
arrow==1.2.2
pytest==6.2.5
llvmlite==0.39.1
numba==0.56.2
tabulate==0.8.9
tqdm==4.63.2
typing_extensions==4.2.0
```

#### PyTorch

PyTorch versions cannot be specified by versions alone, so the wheels are listed
below instead:

```
torch-1.13.0+cu116-cp310-cp310-linux_x86_64.whl
torchvision-0.14.0+cu116-cp310-cp310-linux_x86_64.whl
torchaudio-0.13.0+cu116-cp310-cp310-linux_x86_64.whl
```

#### All Python Libraries

```
arrow==1.2.2
pytorch-lightning==1.8.1
pytest==6.2.5
scikit-image==0.19.3
scikit-learn==1.1.0
scipy==1.7.2
seaborn==0.12.0
lightning-bolts==0.6.0.post1
llvmlite==0.39.1
matplotlib==3.5.2
monai==1.0.1
numba==0.56.2
numpy==1.22.3
pandas==1.5.1
tabulate==0.8.9
torch-1.13.0+cu116-cp310-cp310-linux_x86_64.whl
torchaudio-0.13.0+cu116-cp310-cp310-linux_x86_64.whl
torchvision-0.14.0+cu116-cp310-cp310-linux_x86_64.whl
tqdm==4.63.2
typing_extensions==4.2.0
```


### Included Command Line Tools

```
gcc
make
rsync
sqlite
wget
```

### Build Steps

See the CentOS [README](#)
