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
	@docker-compose -f ./srcs/docker-compose.yml down -v

clean: down
	@docker rmi $(docker ps -aq)

fclean: clean
	@rm -rf /home/ojamil/data/wordpress
	@docker volume rm srcs_vl_mariadb srcs_vl_wp

re: fclean all
