# docker-fish [![Docker pulls](https://img.shields.io/docker/pulls/andreiborisov/fish.svg?logo=docker&label=pulls&color=2396ed)](https://hub.docker.com/repository/docker/andreiborisov/fish)

> Dockerfiles for running various versions of the [fish shell](https://fishshell.com)

## Image usage

The default Docker command is `fish`, allowing for interactive shell usage:

```console
$ docker run -it --rm andreiborisov/fish:latest
Welcome to fish, the friendly interactive shell
Type `help` for instructions on how to use fish
nemo@8cee1f8493c3 ~>
```

To invoke `fish` with flags just supply them as arguments:

```console
$ docker run -it --rm andreiborisov/fish:2 --version
fish, version 2.7.1
```

You can also run fish commands directly (without the need to specify `-c` or `--command` fish flag):

```console
$ docker run -it --rm andreiborisov/fish:3.0 fisher ls
jourgebucaran/fishtape
```

### Testing fish packages

You can use these images to run [Fishtape](https://github.com/jorgebucaran/fishtape) tests on multiple fish versions. Check out [fish-package template repo](https://github.com/andreiborisov/fish-package) for the full example on how to do that.

## Supported fish versions

There is an image for each fish version starting from `2.3.0` and also tags for each latest patch, minor and major release. Check out [Docker Hub](https://hub.docker.com/repository/docker/andreiborisov/fish/tags) for the full list of currently available tags.

## What’s included?

* [Fisher](https://github.com/jorgebucaran/fisher)
* [Fishtape](https://github.com/jorgebucaran/fishtape)

## License

[MIT](LICENSE)
