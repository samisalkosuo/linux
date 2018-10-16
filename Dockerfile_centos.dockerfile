FROM centos:7

RUN yum -y install bind-utils net-tools nmap wget

WORKDIR /root
COPY shell.sh .
RUN chmod 755 shell.sh

CMD ["/root/shell.sh"]