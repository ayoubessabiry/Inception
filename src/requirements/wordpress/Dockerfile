FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y curl

RUN apt-get install php php-fpm php-curl php-cli php-zip php-mysql php-xml -y

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp