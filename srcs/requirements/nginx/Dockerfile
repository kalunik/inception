FROM	alpine:3.15.6

RUN	apk update && apk add --no-cache curl openssl openrc nginx

RUN	mkdir -p /run/openrc && touch /run/openrc/softlevel && rc-update add nginx default

RUN 	mkdir /etc/nginx/ssl
RUN	openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
     	-out /etc/nginx/ssl/wjonatho.42.fr.pem \
	-keyout /etc/nginx/ssl/wjonatho.42.fr.key \
      	-subj "/C=RU/ST=Moscow/L=Moscow/O=42/OU=wjonatho/CN=wjonatho/"

RUN	id wpw || adduser -D wpw

RUN	mkdir -p /var/www/wjonatho.42.fr/html && chown -R wpw:wpw /var/www/wjonatho.42.fr/html
#RUN	chmod -R 755 /var/www/wjonatho.42.fr
COPY	wjonatho.42.fr/*.html /var/www/wjonatho.42.fr/html/
#RUN	echo "Volume status - OK!\n" > /var/www/wjonatho.42.fr/html/vol_exist.txt

COPY	wjonatho.42.fr/sites-available	/etc/nginx/sites-available/wjonatho.42.fr
RUN	mkdir -p /etc/nginx/sites-enabled
RUN	ln -s /etc/nginx/sites-available/wjonatho.42.fr \
	/etc/nginx/sites-enabled/

COPY	wjonatho.42.fr/nginx.conf /etc/nginx/nginx.conf

#ALTERNATIVE CONF
#COPY   wjonatho.42.fr/alt_nginx.conf /etc/nginx/nginx.conf

RUN	nginx -t

ENTRYPOINT ["nginx", "-g", "daemon off;"]
