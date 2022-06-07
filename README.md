# Docker + Jenkins Shell Script

Docker 위에 Jenkins를 설치하고 실행, 백업할 수 있는 Shell Script 모음입니다.  
Jenkins를 통해 Docker Container 배포자동화를 구축할 수 있습니다.

## How To Use

### 0. 사용 준비

본 Repo를 clone 후 .sh 파일들에 실행권한을 부여해주세요.

```
$ git clone https://github.com/skymins04/docker-jenkins-sh.git
$ cd docker-jenkins-sh
$ sudo chmod +x ./*.sh
```

### 1. 초기 설치

Docker를 설치하고 Jenkins Container Image를 Pull 받습니다.  
Docker 설치가 포함된 스크립트이기 때문에 **이미 Docker가 설치되어있는 경우엔 실행하지 마세요.**

```
$ sudo ./jenkins-install.sh
```

### 2. Jenkins 컨테이너 실행

Docker에 Jenkins 컨테이너를 올리는 script입니다.  
Docker관련 파일들에 모든사용자 실행권한을 부여하고 이미지에 볼륨과 포트를 바인딩하여 Container를 실행시킵니다.  
포트는 이미지 8080포트를 호스트 50000포트로, 이미지 50000포트를 호스트 50001포트로 바인딩합니다. 필요에 따라 docker-compose.yml을 수정해서 사용하세요.

```
$ sudo ./jenkins-init.sh
```

### 3. Jenkins 백업

실행중인 Jenkins의 /var/jenkins_home에 바인딩된 ~/jenkins 디렉터리를 tar.gz 파일로 백업합니다.

```
$ sudo ./jenkins-backup.sh
```

### 4. Jenkins 초기화

Jenkins Container의 /var/jenkins_home에 바인딩된 ~/jenkins 디렉터리를 제거합니다.

```
$ sudo ./jenkins-clear.sh
```

### 5. Jenkins Container 제거

실행중인 Jenkins Contianer를 종료 및 제거 합니다.

```
$ sudo ./jenkins-rm.sh
```
