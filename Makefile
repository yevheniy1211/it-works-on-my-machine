db-init:
	docker exec -i $(shell docker compose ps -q postgres) \
		psql -U postgres -d it-works-db < backend/db_schema.sql

down:
	 docker compose -f docker-compose.yml down

up:
	 docker compose -f docker-compose.yml up --build -d
