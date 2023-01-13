FROM	alpine:3.15.6

RUN	apk update && apk add --no-cache mariadb mariadb-common mariadb-client openrc

RUN	openrc && touch /run/openrc/softlevel

COPY    tools/mdb.cnf /etc/my.cnf.d/
COPY	tools/setup_db.sh setup_db.sh
RUN	chmod +x setup_db.sh

ENTRYPOINT	["./setup_db.sh"]

#COPY    tools/mdb.cnf /etc/my.cnf.d/
#RUN    sh setup_db.sh
#RUN    rm setup_db.sh

#RUN    sed -i 's/\r$//' setup_db.sh && cat -e setup_db.sh
#CMD    ["/usr/bin/mysqld_safe"]
#CMD [ "mysqld" ]
