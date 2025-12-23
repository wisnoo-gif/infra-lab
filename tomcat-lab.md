tomcat을 이용해서 Docker를 사용하는 실습 후 종료까지 (한 사이클)
1) 원하는 이미지를 검색 : hub.docker.com 

2) 내가 원하는 컨테이너(이미지)를 가져오고 확인
```
docker pull tomcat
docker images
```
   
4) 다운로드한 이미지를 실행 (instance를 만든다.)
```
docker run -d -p 8080:8080 --name tc tomcat
```

```
docker ps

curl localhost:8080

docker stop tc
 
docker start tc
```

4) 실행 중인 Docker instance에 연결 (terminal로 연결)```
docker exec -it tc /bin/bash```

6) 실행중인 Docker instance를 종료```
docker stop tc```

7) 실행한 instance를 제거. (단, 실행이 아닌 상태)```  
docker rm tc```

8) 다운로드한 이미지를 삭제 (인스턴스가 없는 상태)```
docker rmi tomcat```

9) ls로 삭제 확인
