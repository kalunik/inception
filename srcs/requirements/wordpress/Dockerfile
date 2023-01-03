FROM    alpine:3.15.6

RUN     apk add --no-cache openrc wget php7-common php7-fpm php7-session php7-iconv php7-json\
        php7-gd php7-curl php7-xml php7-mysqli php7-imap php7-cgi fcgi php7-pdo\
        php7-pdo_mysql php7-soap php7-xmlrpc php7-posix php7-mcrypt php7-gettext\
        php7-ldap php7-ctype php7-dom php7-simplexml php7-redis

RUN     mkdir -p /var/www/webapps/
RUN     cd /var/www/webapps/
RUN     wget http://wordpress.org/latest.tar.gz
RUN	tar -xzvf latest.tar.gz
#ADD	http://wordpress.org/latest.tar.gz .
RUN	rm latest.tar.gz

COPY	wp-config.php	wordpress/
COPY	php-fpm.conf	/etc/php7/php-fpm.d/www.conf
RUN	echo "<?php echo phpinfo();?>" > wordpress/info.php	

RUN     openrc && touch /run/openrc/softlevel
#RUN	openrc -s php7-fpm start
ENTRYPOINT	["php-fpm7", "-FR"]
