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
