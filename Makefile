start:
	docker-compose \
	-f docker/docker-compose.yml \
	up -d --build
	docker wait docker-elastic-setup-1

run:
	mvn clean install camel:run

stop:
	docker-compose \
	-f docker/docker-compose.yml \
	down