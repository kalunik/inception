FROM	alpine:3.15.6

RUN		apk update && apk add --no-cache openrc\
		mariadb-common mariadb-client mariadb

RUN		openrc && touch /run/openrc/softlevel

COPY	tools/mdb.cnf /etc/my.cnf.d/mariadb-server.cnf
COPY	tools/mariadb_setup.sh mariadb_setup.sh
RUN		chmod +x mariadb_setup.sh

ENTRYPOINT	["./mariadb_setup.sh"]