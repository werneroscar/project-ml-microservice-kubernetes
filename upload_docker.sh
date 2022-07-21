#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=werneroscar/udacity-project-4
# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

docker tag app werneroscar/udacity-project-4:latest
# Step 3:
# Push image to a docker repository
echo "pushing to dockerhub...."
docker push werneroscar/udacity-project-4:latest