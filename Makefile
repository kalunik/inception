COMPOSE_PTH	= ./srcs/docker-compose.yml

all: hosts rmvol vol build up

hosts:
	@sudo sed -i "s/localhost/wjonatho.42.fr/g" /etc/hosts

build:
	sudo docker compose -f $(COMPOSE_PTH) build

up:
	sudo docker compose -f $(COMPOSE_PTH) up -d

ps:
	sudo docker ps -a

logs:
	sudo docker compose -f $(COMPOSE_PTH) logs


stop:
	sudo docker compose -f $(COMPOSE_PTH) stop

start:
	sudo docker compose -f $(COMPOSE_PTH) start

down:
	sudo docker compose -f $(COMPOSE_PTH) down

exec:
	sudo docker exec -it $(serv) sh

vol:
# 	mkdir -p /home/wjonatho/data/maria && sudo chown -R mysql:mysql /home/wjonatho/data/maria
# 	mkdir -p /home/wjonatho/data/wp-ng && sudo chown -R mysql:mysql /home/wjonatho/data/wp-ng
	mkdir -p /home/wjonatho/data/maria
	mkdir -p /home/wjonatho/data/wp-ng
# 	mkdir -p home/wjonatho/data/backup-data

rmvol:
	sudo rm -rf /home/wjonatho/data
# 	sudo docker volume prune -f

rm: rmvol down
	sudo docker system prune -af

re: down rmvol vol build up

.PHONY: all hosts build up ps logs stop start down vol rmvol rm re
