#!/usr/bin/env bash
# This tags and uploads an image to Docker Hub
# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=werneroscar/udacity-project-4
# Step 2
# Run the Docker Hub container with kubernetes
kubectl apply -f project4.yml
# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward pod/microservice 8089:80