- sudo yum install git
- sudo yum install java
- sudo yum install docker

# centos
- sudo docker search centos : centos 확인
- sudo docker pull centos (docker pull 'repo 이름'[:'TAGS 이름']) : centos 받기
- sudo docker images : centos 잘 받았는지 확인

# image 를 실행해 container 생성
- sudo docker run -i -t centos /bin/bash
(docker run -i -t 'repo이름'[:'TAGS이름'])
