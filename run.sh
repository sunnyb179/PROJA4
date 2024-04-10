#!/bin/bash

# Load environment variables
source ./.env

echo 'Running project 03...'

# Create or reset the Docker network
docker network rm project03 || true
docker network create project03

# Run the database container without MYSQL_ROOT_PASSWORD
docker run --name database --hostname database --network project03 -e MYSQL_DATABASE=$MYSQL_DATABASE -p $DATABASE_PORT:3306 -d $DATABASE_IMAGE_TAG

# Run the backend container
docker run --name backend --network project03 -p $BACKEND_PORT:8000 -d $BACKEND_IMAGE_TAG

# Run the frontend container
docker run --name frontend --network project03 -p $FRONTEND_PORT:3000 -d $FRONTEND_IMAGE_TAG

echo 'Project 03 is running.'
