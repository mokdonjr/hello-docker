# 목적
- 내 주요 목적 : 개발 환경을 쉽게 세팅
- 부수 효과 : 가상화(ex. vmware. virtualization을 통해 완전 새로운 컴퓨터를 만듬) 보다 컴퓨팅 자원(cpu)을 적게 사용. 이유는 <b>가상화를 하지 않고 리눅스의 컨테이너 기술을 이용해 프로세스만 격리해서 사용</b>하기 때문.
가상화는 os에 새로운 os를 통째로 설치하기 때문에 용량 등 자원이 많이 소모됨.
컨테이너 기술은 동일 컴퓨터 내에서 가상화하지 않고 <b>기존 os에다가 프로세스를 격리</b>해 마치 가상화 한것처럼 효과가 같음.
가상 머신은 아니지만 가상머신의 효과를 냄.
컨테이너 기술은 가상화 기술에 비해 자원을 거의 99.8% 아낀다고함.
도커는 리눅스에만 유효한 기술이었지만 최근 MS도 가능.
- 개념 참고 문서 : https://ndb796.tistory.com/90
- 명령어 참고 문서 : http://pyrasis.com/Docker/Docker-HOWTO#section-9

# 도커 설치하기
- sudo yum install docker

# centos
- sudo docker search centos : centos 확인
- sudo docker pull centos (docker pull 'repo 이름'[:'TAGS 이름']) : centos 받기
- sudo docker images : centos 잘 받았는지 확인

# image 를 실행해 container 생성
(image는 도커 파일, container는 도커 실행중인 프로세스)

- sudo docker run -i -t centos /bin/bash
(docker run -i -t 'repo이름'[:'TAGS이름'])
(docker run -d --name='컨테이너이름지정' 'repo이름' : 컨테이너 이름 지정해서 백그라운드로 실행하기)
- yum update
- yum install git
- yum install wget
- yum install vim
- yum install make
- [MAVEN 설치]
- [JAVA 설치]
- [PYTHON 설치] https://dodo-it.tistory.com/69
- [MYSQL 설치]
- exit : 도커 종료하고 빠져나오기
(또는 Ctrl + D)
- sudo docker ps -a : 실행했던 도커 이름 출력
- sudo docker start adoring_feynman : 도커에 들어가지 않고 컨테이터 실행만하기
(docker start '도커컨테이너이름')
- sudo docker attach adoring_feynman : 실행중인 도커 컨테이너에 입장하기
(docker attach '도커컨테이너이름')
- Ctrl + P, Ctrl + Q : 도커 컨테이너 종료하지 않고 빠져나오기
- sudo docker ps : 실행중인 도커 컨테이너 이름 출력

# [MAVEN 설치]
- Maven 바이너리 파일 다운로드
$ wget http://mirror.apache-kr.org/maven/maven-3/3.6.1/binaries/apache-maven-3.6.1-bin.tar.gz

- 다운로드 파일 압축 해제
$ tar xzvf apache-maven-3.6.1-bin.tar.gz

- MAVEN_HOME 설정
$ vi ~/.bashrc
  export M2_HOME=/root/program/apache-maven-3.6.1
  export M2=$M2_HOME/bin
  export PATH=$M2:$PATH

$ source ~/.bashrc
$ echo $M2
 (지정한 위치가 출력되면 성공)

$ mvn -version
 (버전이 출력되면 성공)
 
 
# [JAVA 설치]
- Yum repository 이용해 java 설치

$ yum list java*jdk-devel
 (설치 가능한 java 버전 확인)
$ yum install java-1.8.0-openjdk-devel.x86_64
$ java -version
 (1.8 버전이 출력되면 성공)
$ javac -version
 (1.8 버전이 출력되면 성공)

- JAVA_HOME 설정

$ vi /etc/profile
  export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.212.b04-0.el7_6.x86_64
  (맨 아래에 삽입)

$ source /etc/profile
$ echo $JAVA_HOME
 (지정한 위치가 출력되면 성공)


# [MYSQL 설치]

- Mysql yum repository 설치
$ wget https://dev.mysql.com/get/mysql80-community-release-el7-3.noarch.rpm
$ rpm -ivh mysql80-community-release-el7-3.noarch.rpm

- Mysql yum repository 를 이용해 Mysql 설치
$ yum --enablerepo=mysql80-community install mysql-community-server mysql-server mysql-utilities mysql-workbench mysql-connector-python
