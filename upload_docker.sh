#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=0d8fc1481ee2

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username sidiali 
docker tag $dockerpath sidiali/app_repo:app_tag

# Step 3:
# Push image to a docker repository
docker push sidiali/app_repo:app_tag
