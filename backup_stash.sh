#!/bin/sh
docker exec -t ${COMPOSE_PROJECT_NAME}_stashdb_1 pg_dumpall -Upostgres -c > backup/$1/stash.sql
