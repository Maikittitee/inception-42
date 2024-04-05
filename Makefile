NAME = inception
WEB_DIR = ~/data


all: create_dir $(NAME)

create_dir:
	mkdir -p $(WEB_DIR)/mariadb
	mkdir -p $(WEB_DIR)/wordpress

$(NAME): up


up:
	docker compose -f ./srcs/docker-compose.yml up -d --build

down:
	docker compose -f ./srcs/docker-compose.yml down

clean: down
	docker rmi mariadb nginx wordpress
	@sudo rm -rf $(WEB_DIR)

re: clean all