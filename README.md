Dockertools
===========
Simple bash commands for Docker.

## Features
 - get IP for docker container by first part of container id
 - list all runnded dockers and show IP for them

## Installation
Clone this repo and add in your .bashrc script this line:
```
source dockertools/docker.sh
```

## Usage
Show IP for all runned containers
```
dockerips
```

Show IP for container by ID
```
dockerip $UID
```

![Docker bash tools](https://img-fotki.yandex.ru/get/9231/9330072.f/0_152277_68bc2f8_XL.png)

_WARNING!_ If you not trust me, don't do it. You can manually edit your `.bashrc` and copy code from docker.sh.
Or not to touch anything and leave everything as is. It's your choice.

## License
```
Free 4 all!
```
