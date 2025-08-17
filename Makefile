# Makefile for Unified Intake Service

# Start local dev with docker-compose (builds if needed)
up:
	docker-compose up --build

# Stop containers
down:
	docker-compose down

# Rebuild containers without cache
rebuild:
	docker-compose build --no-cache

# View logs
logs:
	docker-compose logs -f

# Run inside app container
sh-app:
	docker exec -it unified-intake-app sh

# Run inside mongo container
sh-mongo:
	docker exec -it unified-intake-mongo bash || docker exec -it unified-intake-mongo sh

