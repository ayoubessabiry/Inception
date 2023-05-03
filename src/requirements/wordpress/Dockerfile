FROM debian:buster

WORKDIR /var/www/html/wordpress

# RUN rm -rf *

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y curl mariadb-client sendmail

RUN mkdir -p /var/run/php

RUN apt-get install php php-fpm php-curl php-cli php-zip php-mysql php-xml -y

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

COPY ./tools/install.sh install.sh

COPY conf/www.conf /etc/php/7.3/fpm/pool.d/

RUN chmod +x install.sh

CMD [ "./install.sh" ]