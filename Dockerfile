#Dockerfile

FROM ubuntu:14.04

RUN apt-get update 
RUN apt-get -y upgrade 
RUN apt-get install -y curl wget mysql-server 
RUN apt-get install -y supervisor


EXPOSE 3306

VOLUME ["/var/lib/mysql"]

ADD supervisor.conf /etc/supervisor/conf.d/supervisor.conf
CMD ["/usr/bin/supervisord"]
