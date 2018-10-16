FROM ubuntu:18.04

RUN apt-get update 

#install useful commands
RUN apt-get -y install curl 
RUN apt-get -y install net-tools
RUN apt-get -y install tcpdump wget 
RUN apt-get -y install iputils-*
RUN apt-get -y install dnsutils 
RUN apt-get -y install vim

WORKDIR /root
COPY shell.sh .
RUN chmod 755 shell.sh

CMD ["/root/shell.sh"]