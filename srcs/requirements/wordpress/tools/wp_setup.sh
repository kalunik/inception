#!/bin/sh
cd /var/www/html/wordpress

sed -i 's|DATABASE_NAME|'${MYSQL_DATABASE}'|g' wp-config.php
sed -i 's|DATABASE_USER|'${MYSQL_USER}'|g' wp-config.php
sed -i 's|DATABASE_PASS|'${MYSQL_PASSWORD}'|g' wp-config.php
sed -i 's|DATABASE_HOST|'${DATABASE_HOST}'|g' wp-config.php

if [ ! -f "/var/www/html/wp_installed" ]; then
	sleep 15
	echo "[INFO] installing wordpress..."

	wp core install --url=https://wjonatho.42.fr/ --title=Inception --admin_user=$MYSQL_USER \
		--admin_password=$MYSQL_PASSWORD --admin_email=nikita_ex@mail.ru --skip-email --allow-root

	touch /var/www/html/wp_installed
fi

php-fpm7 -FR
