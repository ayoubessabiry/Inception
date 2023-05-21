SRC=./src/docker-compose.yml

all :
	docker compose -f $(SRC) up -d
build :
	docker compose -f $(SRC) build
clean :
	docker compose -f $(SRC) down -v