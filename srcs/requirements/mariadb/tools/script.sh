#!/bin/sh

# init
# if [ ! -e /tmp/init ]; then
# 	touch /tmp/init
# fi
# 	echo "USE mysql;" > /tmp/init
# 	echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD';" >> /tmp/init
# 	echo "CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE CHARACTER SET utf8 COLLATE utf8_general_ci;" >> /tmp/init
# 	echo "CREATE USER '$MYSQL_USER'@'localhost' IDENTIFIED by '$MYSQL_PASSWORD';" >> /tmp/init
# 	echo "GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'localhost';" >> /tmp/init
# 	echo "SET PASSWORD FOR '$MYSL_USER'@'localhost' = PASSWORD('ojamil');">> /tmp/init
# 	echo "FLUSH PRIVILEGES;" >> /tmp/init
# exec "$@"

#!/bin/sh

if [ ! -f "/var/lib/mysql/ib_buffer_pool" ]; then
    /etc/init.d/mariadb setup
    rc-service mariadb start
    echo "CREATE USER '${MYSQL_USER}'@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}'" | mysql -u root
    echo "CREATE DATABASE inception;" | mysql -u root
    echo "GRANT ALL PRIVILEGES ON * . * TO '${MYSQL_USER}'@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}'" | mysql -u root
    echo "FLUSH PRIVILEGES" | mysql -u root
    echo "--------------------------------"
    echo "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}'" | mysql -u root
    echo "CREATE DATABASE inception;" | mysql -u root
    echo "GRANT ALL PRIVILEGES ON * . * TO '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}'" | mysql -u root
    echo "FLUSH PRIVILEGES" | mysql -u root
    echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';" | mysql -u root
    echo "FLUSH PRIVILEGES;" | mysql -u root
    # mysql --user="root" --database="inception" --password="${MYSQL_ROOT_PASSWORD}" < /wordpress.sql
fi
# sed -i "s|.*bind-address\s*=.*|bind-address=0.0.0.0|g" /etc/mysql/my.cnf
# sed -i "s|.*bind-address\s*=.*|bind-address=0.0.0.0|g" /etc/my.cnf.d/mariadb-server.cnf

# sed -i "s|.*skip-networking.*|skip-networking|g" /etc/mysql/my.cnf
sed -i "s/skip-networking/#skip-networking/g" /etc/mysql/my.cnf
sed -i "s/skip-networking/#skip-networking/g" /etc/my.cnf.d/mariadb-server.cnf

rc-service mariadb restart
rc-service mariadb stop

/usr/bin/mariadbd --basedir=/usr --datadir=/var/lib/mysql --plugin-dir=/usr/lib/mariadb/plugin --user=mysql --pid-file=/run/mysqld/mariadb.pid --skip-innodb --default-storage-engine=myisam

