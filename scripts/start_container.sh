#!/bin/bash
set -e

docker login -u "maverick334" -p "$(aws ssm get-parameter --name "/CodeBuild/myapp/docker-credentials/password" --with-decryption --query Parameter.Value --output text)"


# Pull the latest Docker image from your Docker Hub repository
docker pull maverick334/test-node-app:latest

# Run the Docker image as a container
docker run -d -p 8000:8000 maverick334/test-node-app:latest
