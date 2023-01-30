FROM    alpine:3.15.6

RUN     apk add --no-cache openrc wget php7-common php7-fpm php7-session php7-iconv php7-json\
        php7-gd php7-mysqli php7-imap php7-cgi fcgi php7-pdo\
        php7-pdo_mysql php7-soap php7-posix php7-mcrypt php7-gettext\
        php7-ldap php7-ctype php7-redis

RUN     mkdir -p /var/www/html/wordpress
# ADD	    http://wordpress.org/latest.tar.gz /var/www/wjonatho.42.fr/html

# RUN     wget http://wordpress.org/latest.tar.gz
# COPY    latest.tar.gz /var/www/wjonatho.42.fr/html/
# RUN	    tar -xzf latest.tar.gz
# RUN	    rm latest.tar.gz

# RUN	wp db create --path=./wordpress
COPY	wp-config.php	wordpress/
COPY	php-fpm.conf	/etc/php7/php-fpm.d/www.conf
# RUN	    echo "<?php echo phpinfo();?>" > /var/www/wjonatho.42.fr/html/wordpress/wp-content/info.php

EXPOSE 9000

# RUN cp -r /wordpress/* /var/www/html/wordpress/

#RUN     openrc && touch /run/openrc/softlevel
#RUN	openrc -s php-fpm7 start
# CMD ["cp","-r", "/wordpress/*", "/var/www/html/wordpress/"]
# ENTRYPOINT	["php-fpm7", "-FR"]
COPY start.sh /
RUN chmod +x ./start.sh
ENTRYPOINT ["./start.sh"]