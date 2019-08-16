FROM centos:centos7
MAINTAINER baegseungchan <mokdonjr@gmail.com>

# Install basic packages
RUN sudo yum update
RUN yum install git
RUN yum install wget
RUN yum install vim
RUN yum install make
