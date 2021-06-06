#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=akshtrikha/python-predictor

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --image=$dockerpath:predictor predictor-app --port=80
# --generator flag is added to ensure expected behaviour

# Step 3:
# List kubernetes pods
kubectl get pods
while [ "$(kubectl describe pods predictor-app | grep ^Status: | head -1 | awk '{print $2}' | tr -d '\n')" != "Running" ]; do
    echo "POD status: $(kubectl describe pods predictor-app | grep ^Status: | head -1 | awk '{print $2}' | tr -d '\n')"
sleep 3
done
echo "POD is running and ready for port forwarding"

# Step 4:
# Forward the container port to a host
kubectl port-forward predictor-app 8000:80
kubectl logs predictor-app
