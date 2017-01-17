[![DockerHub](https://img.shields.io/badge/DockerHub-v33-blue.svg)](https://hub.docker.com/r/ragnaroek/kcov/)
[![DockerHub](https://img.shields.io/badge/DockerHub-latest-blue.svg)](https://hub.docker.com/r/ragnaroek/kcov_head/)


# kcov_docker
docker image for kcov

## run it

```
$ docker pull ragnaroek/kcov:vXX
```
Where XX is the kcov version number (available starting from version v31)

```
$ docker run --security-opt seccomp=unconfined -v $(pwd):/source kcov:v31
```
The `--security-opt` flag is pretty important since kcov tries to set the `personality` of the binary
which docker doesn't allow by default.

For experimental usage there is also a automatic head build of kcov
https://hub.docker.com/r/ragnaroek/kcov_head/
```
docker pull ragnaroek/kcov_head:latest
```
This docker image only has the latest tag and you may get an unstable build.

## build it

```
$ git clone https://github.com/Ragnaroek/kcov_docker.git
$ docker build --tag "kcov:<tagname>" .
```
This builds the latestet tagged version from the kcov repository. You can build a specific version with:

```
$ git clone https://github.com/Ragnaroek/kcov_docker.git
$ docker build --tag "kcov:<tagname>" \
               --build-arg KCOV_GIT_REF=<branch/tag/commit> \
               .
```
