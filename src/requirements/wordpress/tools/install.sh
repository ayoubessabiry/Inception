#!/bin/bash

wp --allow-root core download

wp --allow-root config create --dbname=MYdb --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD --dbhost=db

wp --allow-root db create


wp --allow-root core install --url=$DOMIN_NAME --title=Inception --admin_user=$WORDPRESS_ADMIN --admin_password=$WORDPRESS_ADMIN_PASSWORD --admin_email=$WORDPRESS_ADMIN_EMAIL

php-fpm7.3 -RF