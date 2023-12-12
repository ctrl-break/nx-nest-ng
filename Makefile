SHELL := /bin/bash

init-db:
		source ./db/init.sh
		docker-compose up -d --build

remove-db:
		docker compose rm --stop --volumes --force
		rm .env || true
		rm ./db/createdb.sql  || true

up:
		docker-compose up -d
down:
		docker-compose down