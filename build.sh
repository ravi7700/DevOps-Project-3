#!/bin/bash
set -e
echo "Starting Docker build process..."
docker build -t react-app-image:latest .
echo "Docker image built successfully!"
