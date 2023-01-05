FROM	alpine:3.15.6

RUN	apk update && apk add --no-cache mariadb mariadb-common mariadb-client openrc

RUN	openrc && touch /run/openrc/softlevel

COPY	tools/mdb.cnf /etc/my.cnf.d/
COPY	tools/setup.sh setup_db.sh
RUN	chmod +x setup_db.sh
#RUN	sed -i 's/\r$//' setup_db.sh && cat -e setup_db.sh 
RUN	sh setup_db.sh
RUN	rm setup_db.sh

CMD	["/usr/bin/mysqld_safe"]
#RUN	/usr/bin/mariadbd --basedir=/usr --datadir=/var/lib/mysql --plugin-dir=/usr/lib/mariadb/plugin --user=mysql --pid-file=/run/mysqld/mariadb.pid
#CMD [ "mysqld" ]
