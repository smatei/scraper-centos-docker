FROM centos:7
RUN  yum -y update \
##################################################################
# install java
  && yum -y install maven \
  && yum -y install git-core \
  && yum -y install gtk+-devel gtk2-devel \
  && yum -y install wget \
  && wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "https://download.oracle.com/otn-pub/java/jdk/8u191-b12/2787e4a523244c269598db4e85c51e0c/jdk-8u191-linux-x64.rpm" \
  && yum -y localinstall jdk-8u191-linux-x64.rpm \
  && alternatives --set java /usr/java/jdk1.8.0_191-amd64/jre/bin/java \
  && alternatives --set javac /usr/java/jdk1.8.0_191-amd64/bin/javac \
##########################
# cleanup install packages  
  && rm -rf /var/lib/yum/yumdb/*
##########################
ENTRYPOINT export JAVA_HOME="/usr/java/jdk1.8.0_191-amd64/" \
  && bash  


