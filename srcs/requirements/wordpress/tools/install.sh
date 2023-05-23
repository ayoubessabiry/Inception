#!/bin/bash

wp --allow-root core download

wp --allow-root config create --dbname=MYdb --dbuser=$MYSQL_USER --dbpass=$MYSQL_ROOT_PASSWORD --dbhost=mariadb

wp --allow-root db create

wp --allow-root core install --url=$DOMAIN_NAME --title=Inception --admin_user=$WORDPRESS_ADMIN --admin_password=$WORDPRESS_ADMIN_PASSWORD --admin_email=aessabir@student.1337.ma

wp --allow-root user create $USER_LOGIN "Youb@youb.com" --role=contributor --user_pass=$USER_PASSWORD

php-fpm7.3 -RF