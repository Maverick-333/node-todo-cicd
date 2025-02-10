#!/bin/bash
set -e

# Pull the latest Docker image from your Docker Hub repository
docker pull maverick334/test-node-app:latest

# Run the Docker image as a container
docker run -d -p 8000:8000 maverick334/test-node-app:latest
