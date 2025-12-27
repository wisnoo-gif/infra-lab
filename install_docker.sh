
# 도커 자동 설치 스크립트 (Rocky Linux)

# 1. 기존에 설치된 도커 관련 패키지가 있다면 삭제 (충돌 방지)
sudo dnf remove -y docker
              
# 2. 도커 설치에 필요한 유틸리티 도구 설치
sudo dnf -y install dnf-plugins-core

# 3. 도커 공식 저장소(Repository) 추가
sudo dnf config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# 4. 도커 엔진 및 필수 패키지 설치, 도커를 설치하는데 방해되는 요소 제거(--allowerasing)
sudo dnf install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin --allowerasing  

# 5. 도커 서비스 시작 및 재부팅 시 자동 실행 설정
sudo systemctl start docker
sudo systemctl enable docker
#혹은
sudo systemctl enable --now docker  #시작과 자동실행을 한번에

# 6. 설치된 docker 버전 결과 확인
docker --version
