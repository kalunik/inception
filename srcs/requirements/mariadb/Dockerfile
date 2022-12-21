FROM	alpine:3.15.6

RUN	apk update && apk add --no-cache mariadb mariadb-client openrc

RUN	openrc && touch /run/openrc/softlevel

COPY	tools/setup.sh setup_db.sh
RUN	chmod +x setup_db.sh
#RUN	sed -i 's/\r$//' setup_db.sh && cat -e setup_db.sh 
RUN	./setup_db.sh
#RUN	rm setup.sh

RUN	openrc -s mariadb start

#ENTRYPOINT [ "mariadb" ]
