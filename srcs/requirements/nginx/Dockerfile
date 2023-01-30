FROM	alpine:3.15.6

RUN		apk update && apk add --no-cache openssl nginx

RUN		mkdir /etc/nginx/ssl
RUN		openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
			-out /etc/nginx/ssl/wjonatho.42.fr.pem \
			-keyout /etc/nginx/ssl/wjonatho.42.fr.key \
			-subj "/C=RU/ST=Moscow/L=Moscow/O=42/OU=wjonatho/CN=wjonatho/"

RUN		mkdir -p /var/www/html/wordpress/wp-content && chown -R nginx:nginx /var/www/html/wordpress


COPY	wjonatho.42.fr/nginx.conf /etc/nginx/nginx.conf

RUN		mkdir -p /var/run

ENTRYPOINT ["nginx", "-g", "daemon off;"]
