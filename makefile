.PHONY: dev prod down

dev:
	docker-compose up --build

prod:
	NODE_ENV=production docker-compose up --build

down:
	docker-compose down