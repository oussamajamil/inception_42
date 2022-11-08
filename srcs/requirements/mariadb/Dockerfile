FROM alpine:3.11

RUN apk update && \
	apk add --no-cache mariadb

RUN mkdir -p /run/mysqld && \
	chown -R mysql:mysql /run/mysqld /var/lib/mysql

RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql

COPY ./tools/script.sh .
COPY ./conf/my.cnf /etc/

RUN chmod +x script.sh
ENV MYSQL_DATABASE=inception
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_USER=ojamil
ENV MYSQL_PASSWORD=root

RUN apk add mysql-client
EXPOSE 3306

ENTRYPOINT sh ./script.sh
# CMD ["/usr/bin/mysqld", "--user=mysql", "--init-file=/tmp/init"]