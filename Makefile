all:	rm_volumes volumes build up

rm_volumes:
	sudo rm -rf $(HOME)/data

volumes:
	mkdir -p $(HOME)/data/DB
	mkdir -p $(HOME)/data/wp-db

build:
	sudo docker compose -f ./srcs/docker-compose.yml build

up:
	sudo docker compose -f ./srcs/docker-compose.yml up -d

down:
	sudo docker compose -f ./srcs/docker-compose.yml down
