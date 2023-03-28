FROM debian:buster

RUN	apt-get -y upgrade && apt-get -y update

RUN apt-get -y install mariadb-server

COPY conf/conf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY /tools/Script CreateUser

CMD	["bash", "CreateUser"]