.PHONY: up down restart logs ps reload

up:
	docker compose up -d

down:
	docker compose down

restart:
	docker compose restart

logs:
	docker compose logs -f prometheus

ps:
	docker compose ps

reload:
	curl -X POST http://localhost:9090/-/reload
