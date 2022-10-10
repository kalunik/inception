FROM	nginx:alpine

RUN		apk update && apk add openssl

#RUN		apk add --update python3 py3-pip

#RUN 	apk add certbot

#RUN 	pip install certbot-nginx

#COPY	./hostname /etc/hostname

RUN mkdir /etc/nginx/ssl

RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
      -out /etc/nginx/ssl/wjonatho.42.fr.pem -keyout /etc/nginx/ssl/wjonatho.42.fr.key \
      -subj "/C=RU/ST=Moscow/L=Moscow/O=42/OU=wjonatho/CN=wjonatho/"

#COPY	./default.conf	/etc/nginx/conf.d

COPY	./example.conf /etc/nginx/conf.d/default.conf

#COPY	./myhostname.crt /usr/share/nginx/html
#
#COPY	./myhostname.key /usr/share/nginx/html

COPY	./*.html /usr/share/nginx/html

#RUN		certbot -v certonly --webroot --webroot-path=/usr/share/nginx/html --email nikitaex123@gmail.ru --agree-tos --no-eff-email --staging -d wjonatho.42.fr

#RUN certbot --nginx

RUN		nginx -t

ENTRYPOINT ["nginx", "-g", "daemon off;"]
