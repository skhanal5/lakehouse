DC=docker-compose.yml

.PHONY: up down clean logs restart shell-trino

up:
	@echo "Starting lakehouse stack..."
	docker-compose -f $(DC) up -d

down:
	@echo "Stopping lakehouse stack..."
	docker-compose -f $(DC) down

clean:
	@echo "Stopping and removing containers and volumes..."
	docker-compose -f $(DC) down -v

logs:
	@echo "Showing combined logs..."
	docker-compose -f $(DC) logs -f

restart:
	@echo "Restarting lakehouse stack..."
	docker-compose -f $(DC) restart

shell-trino:
	@docker exec -it $$(docker ps -qf "name=trino") trino