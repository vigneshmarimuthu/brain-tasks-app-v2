#!/bin/bash
set -e
IMAGE_URI="<your-account-id>.dkr.ecr.us-east-1.amazonaws.com/brain-tasks-app:latest"

kubectl set image deployment/brain-deploy brain-container=$IMAGE_URI --record
kubectl rollout status deployment/brain-deploy
