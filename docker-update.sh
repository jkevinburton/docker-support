#!/bin/bash
cd $HOME/docker_files
docker-compose pull 
docker-compose down 
docker-compose up -d
docker system prune -fa
docker volume prune -f

docker attach --sig-proxy=false hass