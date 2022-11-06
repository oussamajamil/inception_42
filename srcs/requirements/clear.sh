#!/bin/bash

cd mariadb
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi $(docker images)

cd ..
cd nginx
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)
docker rmi $(docker images)

cd ..
cd wordpress 
docker build -t wordpres .
docker run --name wordpres wordpres
