# CentOS 7.9.2009

## Included ML Libraries

```
arrow==1.2.2
monai==1.0.1
pytorch-lightning==1.8.1
pytest==6.2.5
scikit-image==0.19.3
scikit-learn==1.1.0
scipy==1.7.2
seaborn==0.12.0
statsmodels==0.13.5
lightning-bolts==0.6.0.post1
llvmlite==0.39.1
matplotlib==3.5.2
monai==1.0.1
numba==0.56.2
numpy==1.22.3
pandas==1.5.1
pynndescent==0.5.8
tabulate==0.8.9
tqdm==4.63.2
typing_extensions==4.2.0
umap-learn==0.5.3
xgboost=1.7.1
```

## Build Steps

Make sure to `cd` to this directory first (although scripts will run correctly regardless
of your working directory).

If the torch wheels are not already downloaded, run

```bash
bash download_torch_wheels.sh
```

I recommend to first build the sandbox so that if Python install errors occur, you
can activate the sandbox shell in writable mode with

```bash
sudo apptainer shell --no-home --writable centos_app
```

and attempt to find the missing libs or otherwise get the install working. Once working,
built wheels can also be stolen from the container and saved so they don't have to be
rebuilt on next build with

```bash
bash pilfer_sandbox_files.sh
```

If in fact you are satisfied with that sandbox, you can convert it using

```bash
bash convert_sandbox_to_container.sh
```

Otherwise, the container is built directly using

```bash
./build_container.sh
```

