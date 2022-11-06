#!/bin/sh

# init
if [ ! -e /tmp/init ]; then
	touch /tmp/init
fi
	echo "USE mysql;" > /tmp/init
	echo "FLUSH PRIVILEGES;" >> /tmp/init
	echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';" >> /tmp/init
	echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE CHARACTER SET utf8 COLLATE utf8_general_ci;" >> /tmp/init
	echo "CREATE USER '$MYSQL_USER'@'localhost' IDENTIFIED by '$MYSQL_PASSWORD';" >> /tmp/init
	echo "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'localhost';" >> /tmp/init
	echo "SET PASSWORD FOR '$MYSL_USER'@'localhsot' = PASSWORD('ojamil');">> /tmp/init
	echo "FLUSH PRIVILEGES;" >> /tmp/init
exec "$@"