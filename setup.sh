#!/bin/bash

# Build MongoDB container
docker build -f Dockerfile.db -t mongodb .

# Build Express app container
docker build -f Dockerfile.app -t myapp .

# Configure the behaviour of the containers from docker-compose.yml
# docker-compose up

# Run MongoDB container
docker run -i -p 27017:27017 -t mongodb

# Run Express app container
docker run -i -p 3000:3000 -t myapp







