#!/usr/bin/env bash
set -euxo pipefail

docker-compose rm --volumes || echo "no containers to remove"
docker volume rm slurm-cluster_shared-vol || echo "no volume to remove"
docker-compose build
docker-compose up
