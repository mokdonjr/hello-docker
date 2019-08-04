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
- yum update
- yum install git
- yum install wget
- yum install vim
- [MAVEN 설치]
- [JAVA 설치]



[MAVEN 설치]
Maven 바이너리 파일 다운로드
$ wget http://mirror.apache-kr.org/maven/maven-3/3.6.1/binaries/apache-maven-3.6.1-bin.tar.gz

다운로드 파일 압축 해제
$ tar xzvf apache-maven-3.6.1-bin.tar.gz

MAVEN_HOME 설정
$ vi ~/.bashrc
  export M2_HOME=/root/program/apache-maven-3.6.1
  export M2=$M2_HOME/bin
  export PATH=$M2:$PATH

$ source ~/.bashrc
$ echo $M2
 (지정한 위치가 출력되면 성공)

$ mvn -version
 (버전이 출력되면 성공)
 
 
 [JAVA 설치]
 Yum repository 이용해 java 설치

$ yum list java*jdk-devel
 (설치 가능한 java 버전 확인)
$ yum install java-1.8.0-openjdk-devel.x86_64
$ java -version
 (1.8 버전이 출력되면 성공)
$ javac -version
 (1.8 버전이 출력되면 성공)


JAVA_HOME 설정

$ vi /etc/profile
  export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.212.b04-0.el7_6.x86_64
  (맨 아래에 삽입)

$ source /etc/profile
$ echo $JAVA_HOME
 (지정한 위치가 출력되면 성공)
