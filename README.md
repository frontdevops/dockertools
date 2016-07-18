Dockertools
===========
Simple bash commands for Docker.

## Features
 - get IP for docker container by first part of container id
 - list all runnded dockers and show IP for them

## Installation
Clone this repo and add in your .bashrc script this line:
```bash
source dockertools/docker.sh
```

## Usage
Show IP for all runned containers
```bash
dockerips
```

Show IP for container by ID
```bash
dockerip $UID
```

![Docker bash tools](https://img-fotki.yandex.ru/get/3307/9330072.f/0_152e00_71d2f9da_XL.png)

## Last runned container
You can get the ID of the last run container

```bash
_id_
```

Usage:
```bash
docker stop `_id_`
docker restart $(_id_)
```

## WARNING!
If you not trust me, don't do it. You can manually edit your `.bashrc` and copy code from docker.sh.
Or not to touch anything and leave everything as is. It's your choice.

## License
```
Free 4 all!
```
