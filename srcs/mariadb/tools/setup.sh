#!bin/bash

#cp my.cnf /etc/mysql/

if [ ! -d /var/lib/mysql ]
then 
openrc -s mariadb setup
openrc -s mariadb start
mariadb -u root -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;"
mariadb -u root -e "USE $MYSQL_DATABASE;"
mariadb -u root -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
mariadb -u root -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%'; "
mariadb -u root -e "FLUSH PRIVILEGES;"
mariadb -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"
openrc -s mariadb stop
fi
