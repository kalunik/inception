#!/bin/sh

#cp my.cnf /etc/mysql/

if [ -d /var/lib/mysql/${MYSQL_DATABASE} ]; 
then
	echo "Database already exists."
else
	/etc/init.d/mariadb setup
	/etc/init.d/mariadb start
	mariadb -u root -e "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;"
	mariadb -u root -e "USE $MYSQL_DATABASE;"
	mariadb -u root -e "CREATE USER IF NOT EXISTS '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';"
	mariadb -u root -e "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%'; "
	mariadb -u root -e "FLUSH PRIVILEGES;"
	mariadb -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';"
	/etc/init.d/mariadb stop
fi

sed -i 's/skip-networking/# skip-networking/g' /etc/my.cnf.d/mariadb-server.cnf
