#!/bin/bash

/etc/init.d/mysql restart 
echo "GRANT ALL ON *.* TO '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD' WITH GRANT OPTION;" | mysql
echo "FLUSH PRIVILEGES;" | mysql