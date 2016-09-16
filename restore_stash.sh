#!/bin/sh
IMAGE=backup
docker ps --all
docker stop $IMAGE
docker ps --all
docker rm $IMAGE
docker ps --all
echo running...
docker run -d --name $IMAGE -v ${COMPOSE_PROJECT_NAME}_stashdbvol:/var/lib/postgresql/data postgres:9.3
echo sleeping...
sleep 20
cat $1/stash.sql | docker exec -i $IMAGE psql -Upostgres
docker stop $IMAGE
docker rm $IMAGE
docker ps --all
