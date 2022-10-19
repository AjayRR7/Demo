#! /bin/bash

echo "Welcome....."


echo 'git pull.....'
#git pull
git pull  <remote> <branch>

echo 'building......'
#docker yml file building
docker-compose -f docker-compose.dev. yml build


echo 'migrating......'
#migrate 
docker-compose -f docker-compose.dev.yml run --rm web python manage.py migrate


echo 'Docker-compose up....'
#docker-compose up
docker-compose -f docker-compose.dev.yml up

