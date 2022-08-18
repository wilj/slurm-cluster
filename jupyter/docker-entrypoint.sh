#!/bin/bash

cp -R /tmp/src/examples /home/gitpod
sudo chown -r gitpod:gitpod /home/gitpod

sudo service munge start

jupyter lab --no-browser --allow-root --ip=0.0.0.0 --NotebookApp.token='' --NotebookApp.password=''

tail -f /dev/null
