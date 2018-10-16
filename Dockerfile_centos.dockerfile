FROM centos:7

RUN yum -y install bind-utils net-tools wget

WORKDIR /root
COPY shell.sh .
RUN chmod 755 shell.sh

CMD ["/root/shell.sh"]