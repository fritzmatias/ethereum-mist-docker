#!/bin/bash

IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost + $IP

docker start ethereum-mist-public

# docker logs --follow ethereum-mist-public

