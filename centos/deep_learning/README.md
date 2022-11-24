# CentOS 7.9.2009

## Build Steps

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

