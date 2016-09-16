#!/bin/sh
docker run --rm -v ${COMPOSE_PROJECT_NAME}_stashvol:/var/atlassian/stash -v $(pwd)/$1:/$1 ubuntu bash -c "cd /var/atlassian && tar xpvfz /$1/stash.tar.gz"
