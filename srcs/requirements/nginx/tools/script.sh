#!bin/sh
openssl req -x509 -nodes -days 365 -subj "/C=MA/ST=Beni Mellal-Khenifra/L=Khouribga/O=1337 - 42 Network/CN=ojamil.42.fr" -addext "subjectAltName=DNS:ojamil.42.fr" -newkey rsa:2048 -keyout /etc/ssl/private/selfsigned-nginx.key -out /etc/ssl/certs/selfsigned-nginx.crt;


chmod 600  /etc/ssl/private/selfsigned-nginx.key etc/ssl/certs/selfsigned-nginx.crt

exec "$@"