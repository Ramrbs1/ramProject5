#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=ramrbs1/project5

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run ramproject --image=$dockerpath --port=80 --labels app=ramproject


# Step 3:
# List kubernetes pods
kubectl get pod

# Step 4:
# Forward the container port to a host
kubectl port-forward ramproject 8000:80
