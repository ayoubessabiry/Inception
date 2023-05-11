#!/bin/bash

wp --allow-root core download

wp --allow-root config create --dbname=MYdb --dbuser=aessabir --dbpass=password123 --dbhost=db

wp --allow-root db create


wp --allow-root core install --url=aessabir.42.fr --title=test --admin_user=aessabir --admin_password=password123 --admin_email=aessabir@student.1337.ma

php-fpm7.3 -RF