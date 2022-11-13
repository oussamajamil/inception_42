all: up

build:
	@docker-compose -f ./srcs/docker-compose.yml build

up:
	@docker-compose -f ./srcs/docker-compose.yml up --build

stop:
	@docker-compose -f ./srcs/docker-compose.yml stop

start:
	@docker-compose -f ./srcs/docker-compose.yml start

down:
	@docker-compose -f ./srcs/docker-compose.yml down

clean: down
	@docker image rmi -f nginx wordpress mariadb

fclean: clean
	@rm -rf /home/ojamil/data/wordpress/*  /home/ojamil/data/db/*
	@docker volume rm srcs_mariadb_vl srcs_wordpress_vl

re: fclean all
