FROM debian:buster

RUN	apt-get -y upgrade && apt-get -y update

RUN apt-get -y install mariadb-server

COPY conf/conf.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY tools/Script.sh CreateUser

ARG MYSQL_USER MYSQL_ROOT_PASSWORD

RUN chmod +x CreateUser && ./CreateUser
 
CMD	["mysqld"]