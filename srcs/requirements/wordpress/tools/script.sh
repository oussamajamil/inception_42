#!bin/bash

mkdir -p /var/www/html/wordpress/public_html

cd /var/www/html/wordpress/public_html
curl -LO https://wordpress.org/latest.tar.gz
tar -xvf latest.tar.gz
rm latest.tar.gz
mv wordpress/* .
rm -rf wordpress
chown -R www-data:www-data *
chmod -R 755 *
mv wp-config-sample.php wp-config.php

sed -i "s/database_name_here/$MYSQL_DATABASE/g" wp-config.php
sed -i "s/username_here/$MYSQL_USER/g" wp-config.php
sed -i "s/password_here/$MYSQL_PASSWORD/g" wp-config.php
wp core download --allow-root
exec "$@"