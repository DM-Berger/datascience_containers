# Alpine 3.16.2

## Build Steps

If the torch wheels are not already downloaded, run

```bash
bash download_torch_wheels.sh
```

I recommend to first build the sandbox so that if Python install errors occur, you
can activate the sandbox shell in writable mode with

```bash
sudo apptainer shell --no-home --writable alpine_app
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

## Notes on Alpine

Because of the dependency on [musl libc](https://en.wikipedia.org/wiki/Musl), this
container has to compile almost all Python libraries, and there is no guarantee that,
even if they compile, they will actually work. So you probably shouldn't use this
container unless you know what you are doing and *really* need Alpine for some reason.

Also, perhaps because I don't yet clean up compilation files, the final container
size doesn't even end up being smaller than e.g. a CentOS container. So this should
probably be seen as a failed experiment...
