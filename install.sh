#!/usr/bin/env bash
set -euo pipefail

sudo cp /etc/munge/munge.key $GITPOD_REPO_ROOT/
sudo chown gitpod:gitpod $GITPOD_REPO_ROOT/munge.key

images=("jupyter" "master" "node")
for image in ${images[@]}
do
    cp $GITPOD_REPO_ROOT/munge.key $GITPOD_REPO_ROOT/$image/munge.key
done


UID=$(id -u) 
GID=$(id -g)

envsubst < template.env > .env

docker-compose build baseimage
docker-compose build
docker-compose up