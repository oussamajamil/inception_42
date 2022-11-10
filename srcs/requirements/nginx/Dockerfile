FROM debian:buster

RUN apt-get update -y
RUN	apt-get install nginx -y
RUN	apt-get install vim -y
RUN apt-get -y install openssl

COPY ./tools/script.sh .
RUN chmod 777 ./script.sh
COPY ./conf/default /etc/nginx/sites-available/default
EXPOSE 443

ENTRYPOINT ["./script.sh"]
# STOPSIGNAL SIGQUIT
CMD ["nginx", "-g", "daemon off;"]


