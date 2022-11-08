FROM debian:buster

RUN apt-get update -y
RUN	apt-get install nginx -y
RUN	apt-get install vim -y
RUN apt-get -y install openssl

ENV MYSQL_DATABASE=inception
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_USER=ojamil
ENV MYSQL_PASSWORD=root


COPY ./tools/script.sh .
COPY ./conf/default /etc/nginx/sites-available/default
EXPOSE 443

ENTRYPOINT ["./script.sh"]
# STOPSIGNAL SIGQUIT
CMD ["nginx", "-g", "daemon off;"]


