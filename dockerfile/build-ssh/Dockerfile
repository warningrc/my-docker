#Dockerfile
FROM centos:centos6
MAINTAINER warning <childe.wangning@gmail.com>


ENV http_proxy 10.12.16.16:808
ENV https_proxy 10.12.16.16:808





#RUN yum install -y wget
RUN mkdir /etc/yum.repos.d/backup
RUN mv /etc/yum.repos.d/*.repo /etc/yum.repos.d/backup


ADD Centos-6.repo  /etc/yum.repos.d/CentOS-Base.repo
ADD epel-6.repo /etc/yum.repos.d/epel-6.repo

#RUN wget -O /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-6.repo
#RUN wget -O /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-6.repo



RUN yum install -y vim openssh-clients openssh-server libaio bc flex unzip 
RUN yes | ssh-keygen -q -N "" -t dsa -f /etc/ssh/ssh_host_rsa_key
RUN yes | ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key
RUN mkdir -p /root/.ssh && chown root.root /root && chmod 700 /root/.ssh


EXPOSE 22
CMD /usr/sbin/sshd -D
