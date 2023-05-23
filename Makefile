SRC=./srcs/docker-compose.yml

build :
	docker compose -f $(SRC) build
run :
	docker compose -f $(SRC) up -d
clean :
	sudo rm -rf /home/aessabir/data/database/*
	sudo rm -rf /home/aessabir/data/wordpress/*
	docker compose -f $(SRC) down -v

re : clean build run