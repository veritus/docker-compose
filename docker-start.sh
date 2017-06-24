
#!bin/bash

# Script for starting up the whole stack

export DB_USER=$1 
export DB_PASS=$2 
export DB_HOST=$3

# Building images
docker-compose build

# Run migration on backend image
docker-compose run backend /usr/local/bin/python3 src/manage.py migrate

# Initialize database
docker-compose run backend /usr/local/bin/python3 src/manage.py loaddata init_data.json

# Run all images
docker-compose up -d