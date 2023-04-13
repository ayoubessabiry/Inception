#!/bin/bash

/etc/init.d/mysql restart
echo "GRANT ALL ON *.* TO 'aessabir'@'localhost' IDENTIFIED BY 'password123' WITH GRANT OPTION;" | mysql
echo "FLUSH PRIVILEGES;" | mysql
