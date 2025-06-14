POSTGRES_IMAGE_NAME := yaltuzz/postgres
POSTGRES_CONTAINER_NAME := postgres

build-and-run: build run

build: postgres

run:
	POSTGRES_IMAGE=${POSTGRES_IMAGE_NAME} \
	docker-compose -p "cake_shop" up

postgres:
	@docker build -f ../postgres/Dockerfile -t ${POSTGRES_IMAGE_NAME} ../postgres/

delete:
	@docker image rm ${POSTGRES_IMAGE_NAME}

clean:
	@echo "Removing stopped containers..."
	@docker container prune -f
	@echo "Removing old images..."
	@if [ -n "$$(docker images -f 'dangling=true' -q)" ]; then \
		docker rmi $$(docker images -f 'dangling=true' -q); \
	fi
