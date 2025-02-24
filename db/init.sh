#!/bin/bash

if [ -f ".env" ]; then
    pwd
    RED='\033[0;31m'
    NC='\033[0m' # No Color
    echo -e "${RED}.env file already exists${NC}"
    exit 1
fi

echo "Enter app name (default: app) "
read appName
echo "Enter db name (default: docker) "
read name
echo "Enter db username (default: docker) "
read user
echo "Enter db password "
stty -echo
read pass
stty echo

touch .env
app=$([[ "$appName" != "" ]] && echo "$appName" || echo "app")
dbname=$([[ "$name" != "" ]] && echo "$name" || echo "docker")
dbuser=$([[ "$user" != "" ]] && echo "$user" || echo "docker")
port="8100"
uuid=$(cat /proc/sys/kernel/random/uuid)

echo "APP_NAME=$app" >> .env
echo "DB_DATABASE=$dbname" >> .env
echo "DB_USERNAME=$dbuser" >> .env
echo "DB_PASSWORD=$pass" >> .env
echo "DATABASE_PORT=$port" >> .env
echo "DATABASE_URL=\"postgresql://$dbuser:$pass@localhost:$port/$dbname\"" >> .env
echo "JWT_SECRET=$uuid" >> .env

cp ./db/initial.sql ./db/createdb.sql
filename="./db/createdb.sql"
sed -i "s/TEMP_DB_NAME/$dbname/" $filename
sed -i "s/TEMP_DB_USER/$dbuser/" $filename
sed -i "s/TEMP_DB_PASS/$pass/" $filename

echo "done"
