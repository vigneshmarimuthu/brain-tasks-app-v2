#!/bin/bash
set -e
aws eks update-kubeconfig --name brain-cluster --region us-east-1
