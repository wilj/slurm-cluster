#!/usr/bin/env bash
for c in $(docker ps -q)
do 
    n=$(docker inspect $c --format='{{ .Name }}')
    echo "$n - $c"
    docker exec -it $c cat /tmp/slurmdebug.log
done