
#!bin/bash

# Script for just starting up the backend

export POSTGRES_USER=$1 
export POSTGRES_PASSWORD=$2

# Building images
docker-compose build

# Run migration on backend image
docker-compose run backend /usr/local/bin/python3 src/manage.py migrate

# Initialize database
docker-compose run backend /usr/local/bin/python3 src/manage.py loaddata init_data.json

# Run backend image
docker-compose run backend