#Jinwoo's infra-lab

1. `install_docker.sh` : Rocky Linux 9 환경에서 Docker 엔진 자동 설치 및 실행(초기 세팅용)

사용방법
```bash
sudo dnf install -y git #설치
git --version #설치확인
git clone https://github.com/wisnoo-gif/infra-lab.git
cd infra-lab #infra-lab으로 이동
chmod +x install_docker.sh #스크립트에 실행권한주기 
./install_docker.sh #도커스크립트 설치


2. tomcat을 이용해서 Docker를 사용하는 실습
[실습](tomcat-lab.md)
