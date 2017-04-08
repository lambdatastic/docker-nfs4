# NFS4
[![Docker Pulls](https://img.shields.io/docker/pulls/celkamada/nfs4-armhf.svg)](https://hub.docker.com/r/celkamada/nfs4-armhf/)

[NFS v4 server](http://nfs.sourceforge.net/) server running on the armhf version of [Alpine Linux](https://hub.docker.com/_/alpine/).

## Configuration
See [example directory](https://github.com/lambdatastic/docker-nfs4/tree/master/example) for sample config file.

## Quickstart
```
nfs4:
  image: celkamada/nfs4-armhf

  # Required to load kernel NFS module
  privileged: true

  volumes:
    # You must provide an exports config file
    - ./exports:/etc/exports

    # Shares
    - /mnt:/mnt

  ports:
    - "111:111/tcp"
    - "111:111/udp"
    - "2049:2049/tcp"
    - "2049:2049/udp"
```
