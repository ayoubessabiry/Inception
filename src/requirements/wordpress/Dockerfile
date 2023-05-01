FROM debian:buster

WORKDIR /var/www/html/wordpress

# RUN rm -rf *

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y curl mariadb-client sendmail

RUN apt-get install php php-fpm php-curl php-cli php-zip php-mysql php-xml -y

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

# RUN wp --allow-root core download

# RUN wp --allow-root config create --dbname=test --dbuser=aessabir --dbpass=password123 --dbhost=db

# RUN wp --allow-root db create


# RUN wp --allow-root core install --url=localhost --title=test --admin_user=aessabir --admin_password=password123 --admin_email=aessabir@student.1337.ma