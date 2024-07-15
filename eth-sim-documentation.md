# Quickstart
## install with pipenv
- eth2sim의 경우 v1.0.1 기준으로 동작하기 때문에 해당 태그로 checkout을 한다.
```shell
$ git remote add upstream https://github.com/ethereum/consensus-specs.git
$ git fetch --tags upstream
$ git checkout tags/v1.0.1
```
- pipenv setting
```shell
## python version 3.10
pipenv 

## Create a virtualenv or use pipenv to be able to install packages without polluting Python's global packages
pipenv shell 

## Install dependencies
pipenv install -e .
```

## install with dockerfile
### docker desktop
- https://www.docker.com/products/docker-desktop/
### visual studio code
```shell
code --install-extension ms-azuretools.vscode-docker ## Docker v1.29.1
code --install-extension ms-vscode-remote.remote-containers ## Dev Containers v0.375.1
code --install-extension ms-vscode-remote.remote-wsl ## Dev Containers v0.375.1
```

```shell docker build
docker build -t consensus-specs .

```
###  