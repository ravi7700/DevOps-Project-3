#!/bin/bash
set -e
echo "Deploying application via Docker Compose..."
docker rm -f devops-react-app || true
docker-compose up -d
echo "Application successfully deployed!"
