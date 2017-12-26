#!/bin/bash


touch .env
echo "PORT=3000" >> .env
echo "DB_URL=mongodb://localhost:27017/mongodb" >> .env

# Build Express app container
docker build -f ./Docker/app/Dockerfile -t myapp .

# Configure the behaviour of the containers from docker-compose.yml
docker-compose up -d

# Build MongoDB container
# docker build -f ./Docker/db/Dockerfile -t mongodb .

# Run MongoDB container
# docker run -i -p 27017:27017 -t mongodb

# Run Express app container
docker run -i -p 3000:3000 --env-file=./.env -t myapp







