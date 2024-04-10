#!/bin/bash

# Load environment variables
source ./.env

echo 'Building project 03...'

cd database
docker build -t $DATABASE_IMAGE_TAG .
cd ..

cd backend
docker build -t $BACKEND_IMAGE_TAG .
cd ..

cd frontend
docker build -t $FRONTEND_IMAGE_TAG .
cd ..

echo 'Build process completed successfully.'
