#!/usr/bin/env bash

# Step 1:
# This is your Docker ID/path
dockerpath=sidiali/app_repo:app_tag 

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run app --image=$dockerpath --port=80
# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward app 8000:80

