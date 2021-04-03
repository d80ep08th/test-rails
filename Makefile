PROJECT_NAME=rails

start:
	@docker stop resurface
	@docker-compose build
	@docker-compose run runner yarn install
	@docker-compose run runner ./bin/setup
	@docker-compose up --detach rails resurface postgres backend

stop:
	@docker-compose stop
	@docker-compose down --volumes
	@docker image rmi -f resurface-library-dev:1.1.0

bash:
	@docker exec -it rails bash

logs:
	@docker logs -f test

ping:
	@curl "http://localhost/ping"
