FROM	alpine:3.12.0

RUN		apk update
RUN		apk add mariadb-client\
		php7 php7-fpm php7-bcmath php7-bz2 php7-calendar\
		php7-ctype php7-curl php7-dom php7-exif php7-fileinfo\
		php7-gd php7-gmagick php7-gmp php7-iconv php7-imap\
		php7-intl php7-json php7-mbstring php7-mcrypt php7-memcache\
		php7-mysqli php7-mysqlnd php7-openssl php7-pcntl php7-pdo\
		php7-pdo_mysql php7-phar php7-posix php7-session php7-shmop\
		php7-simplexml php7-soap php7-sockets php7-sodium\
		php7-sysvsem php7-sysvshm php7-tokenizer php7-xml\
		php7-xmlreader php7-xmlwriter php7-xsl php7-zip php7-zlib

RUN		adduser -S nginx && addgroup -S nginx

COPY	conf/www.conf /etc/php7/php-fpm.d

COPY	tools/wp_setup.sh /
RUN		chmod +x ./wp_setup.sh

RUN		wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN		chmod 777 ./wp-cli.phar && mv ./wp-cli.phar ./usr/bin/wp && mkdir -p /var/www/html/wordpress
RUN		wp core download --allow-root --path=/var/www/html/wordpress
COPY	./conf/wp-config.php /var/www/html/wordpress/wp-config.php

COPY	./*.html /var/www/html/wordpress/wp-content

ENTRYPOINT [ "./wp_setup.sh" ]
