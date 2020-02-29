init: docker-down prepare docker-pull docker-build docker-up

up: docker-up
down: docker-down

prepare:
	docker network create -d bridge backend || echo "ok"


docker-up:
	docker-compose up -d

docker-down:
	docker-compose down --remove-orphans

docker-pull:
	docker-compose pull

docker-build:
	docker-compose build




# test:
# 	docker-compose exec php-cli vendor/bin/phpunit
#
# logs:
# 	docker-compose logs -f
#
# php:
# 	docker-compose run --rm php-cli bash
#
# node:
# 	docker-compose run --rm node sh
#
# assets-install:
# 	docker-compose exec node yarn install
#
# assets-rebuild:
# 	docker-compose exec node npm rebuild node-sass --force
#
# assets-dev:
# 	docker-compose exec node yarn run dev
#
# assets-watch:
# 	docker-compose exec node yarn run watch


########################################################################################################################
### EXTERN
########################################################################################################################

# ### MySQL & PhpMyAdmin
#
# db-init: db-down db-up
#
# db-up:
# 	docker-compose -f ./docker/db/docker-compose.yml up -d
#
# db-down:
# 	docker-compose -f ./docker/db/docker-compose.yml down --remove-orphans
#
#
# ### Mailcatcher
#
# mailcatcher-init: mailcatcher-down mailcatcher-up
#
# mailcatcher-up:
# 	docker-compose -f ./docker/mailcatcher/docker-compose.yml up -d
#
# mailcatcher-down:
# 	docker-compose -f ./docker/mailcatcher/docker-compose.yml down --remove-orphans






### Остановка и удаление всех контейнеров
# docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)

### Удаление всех образов
# docker rmi $(docker images -a -q)