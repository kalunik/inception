FROM	alpine:3.15.6

RUN	apk update && apk add --no-cache mariadb mariadb-client openrc

RUN	openrc && touch /run/openrc/softlevel

ADD	tools/setup.sh .
RUN	chmod +x /setup.sh && ls -la 
RUN	./setup.sh
#RUN	rm setup.sh

RUN	openrc -s mariadb start

ENTRYPOINT [ "mariadb" ]
