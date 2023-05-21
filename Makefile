SRC=./src/docker-compose.yml

all :
	docker compose -f $(SRC) up -d
build :
	docker compose -f $(SRC) build
clean :
	sudo rm -rf /home/aessabir/data/database/*
	sudo rm -rf /home/aessabir/data/wordpress/*
	docker compose -f $(SRC) down -v

re : clean build all