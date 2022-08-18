#!/usr/bin/env bash
set -euxo pipefail

docker-compose rm -v --force || echo "nothing to remove"
docker rm $(docker ps -aq) || echo "no containers to remove"
docker volume rm slurm-cluster_shared-vol || echo "no volume to remove"

./install.sh