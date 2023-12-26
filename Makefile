SHELL := /bin/bash

init-db:
		source ./db/init.sh
		docker-compose up -d --build

remove-db:
		docker compose rm --stop --volumes --force
		rm .env || true
		rm ./db/createdb.sql  || true

dev-api: 
		docker-compose up -d db
		nx serve api

build-api:
		nx build api --prod
		docker-compose up --build -d
down:
		docker-compose down