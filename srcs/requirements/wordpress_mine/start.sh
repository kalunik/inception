#!/bin/sh

#sed -i 's|DOMAIN_NAME|'${DOMAIN_NAME}'|g' /wordpress/wp-config.php
sed -i 's|DATABASE_NAME|'${MYSQL_DATABASE}'|g' wp-config.php
sed -i 's|DATABASE_USER|'${MYSQL_USER}'|g' wp-config.php
sed -i 's|DATABASE_PASS|'${MYSQL_PASSWORD}'|g' wp-config.php
sed -i 's|DATABASE_HOST|'${DATABASE_HOST}'|g' wp-config.php

wget http://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
rm latest.tar.gz
mv wp-config.php wordpress/


cp -r /wordpress/* /var/www/html/wordpress/

#rm -rf ./wordpress
# This is a variant of PHP that will run in the background as a daemon, listening for CGI requests.
php-fpm7 -FR