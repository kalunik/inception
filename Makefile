COMPOSE_PTH	= ./srcs/docker-compose.yml

all:	rm_volumes volumes build up

rm_volumes:
	sudo rm -rf $(HOME)/data

volumes:
	#sudo userdel mysql
	#sudo useradd -u 999 mysql
	mkdir -p $(HOME)/data/DB && sudo chown -R mysql:mysql $(HOME)/data/DB
	mkdir -p $(HOME)/data/wp-db && sudo chown -R mysql:mysql $(HOME)/data/wp-db

build:
	sudo docker compose -f $(COMPOSE_PTH) build

up:
	sudo docker compose -f $(COMPOSE_PTH) up 

down:
	sudo docker compose -f $(COMPOSE_PTH) down

ps:	
	sudo docker compose -f $(COMPOSE_PTH) ps

rmi:	
	sudo docker compose -f $(COMPOSE_PTH) down --rmi all
