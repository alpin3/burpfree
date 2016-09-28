# alpin3/burpfree

Multiple purpose MariaDB/MySQL based on Alpine

Image is based on the [openjdk](https://hub.docker.com/_/openjdk/) base image

## Docker image size

[![Latest](https://badge.imagelayers.io/alpin3/burpfree.svg)](https://imagelayers.io/?images=alpin3/burpfree:latest 'latest')

## Docker image usage

```
docker run [docker-options] alpin3/burpfree
```

## Examples

Typical usage:

```
docker run -it -v /work:/work -p 8080:8080 alpin3/burpfree
```

X11 forwarding:

```
XSOCK=/tmp/.X11-unix
XAUTH=/tmp/.docker.xauth
xauth nlist :0 | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -
docker run -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e XAUTHORITY=$XAUTH alpin3/burpfree
```

### Todo
- [ ] Provide more examples
