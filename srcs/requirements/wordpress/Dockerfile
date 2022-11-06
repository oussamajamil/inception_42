FROM debian:buster

RUN apt-get update -y
RUN apt-get install -y php php7.3-fpm
RUN	apt-get install curl -y
RUN apt-get install -y php-mysqli
RUN apt-get -y install php-json

ENV MYSQL_DATABASE=inception
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_USER=ojamil
ENV MYSQL_PASSWORD=root

COPY ./tools/script.sh /
RUN chmod +x script.sh
RUN mkdir -p /var/run/php/


EXPOSE 9000
ENTRYPOINT [ "./script.sh" ]
CMD [ "/usr/sbin/php-fpm7.3", "-F" ]



