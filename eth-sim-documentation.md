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
### docker setting 
#### window
- wsl 활성화
    - https://velog.io/@w00j00ng351/wsl-%EA%B8%B0%EB%8A%A5-%ED%99%9C%EC%84%B1%ED%99%94
    - PowerShell을 관리자 권한으로 실행후 아래 명령어 실행
        $ dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
        $ dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
        $ wsl --set-default-version 2
    - Ubuntu 20.04 설치
- docker desktop 설치
    - https://www.docker.com/products/docker-desktop/
    - wsl option활성화
    - https://learn.microsoft.com/en-us/windows/wsl/tutorials/wsl-containers

### visual studio code
```shell
code --install-extension ms-azuretools.vscode-docker ## Docker v1.29.1
code --install-extension ms-vscode-remote.remote-containers ## Dev Containers v0.375.1
code --install-extension ms-vscode-remote.remote-wsl ## Dev Containers v0.375.1
```

```shell docker build
docker build -t consensus-test .
docker run -d --name consensus-specs -v /${PWD}:/code consensus-test
```


### attach to running container
- ctrl + p >   `> dev containers: Attach to Running Container`
- 실제 실행하고 있는 container에 붙는다.
- consensus-specs 선택
- 새로운 ide가 뜬다.
- plugin 새로 설치(초기 1회) / python 
- folder 열기 > /code
- mount되어있는 프로젝트 코드 확인 가능 및 수정
- ctrl + ` > ternminal 열림 코드 실행 가능 (linux환경)
