all: credit up
credit:
	
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
	@docker image rmi -f nginx wordpress mariadb adminer ftp redis website cadvisor

fclean: clean
	@rm -rf /Users/oussama/Desktop/data/wordpress
	@docker volume rm srcs_vl_mariadb srcs_vl_wp

re: fclean all
