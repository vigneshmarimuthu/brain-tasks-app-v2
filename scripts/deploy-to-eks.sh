#!/bin/bash
set -e

# Image URI
IMAGE_URI="788327020083.dkr.ecr.us-east-1.amazonaws.com/brain-tasks-app:latest"

# Check if deployment exists
if kubectl get deployment brain-deploy >/dev/null 2>&1; then
  echo "Updating existing deployment..."
  kubectl set image deployment/brain-deploy brain-container=$IMAGE_URI
  kubectl rollout status deployment/brain-deploy
else
  echo "Creating deployment..."
  kubectl apply -f deployment.yaml
fi
