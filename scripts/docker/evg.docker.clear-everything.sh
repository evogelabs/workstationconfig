#!/bin/bash

docker stop $(docker ps -qa)
docker rm $(docker ps -qa)
docker rmi --force $(docker image list -aq)
docker volume rm $(docker volume ls -q)
docker system prune -f
