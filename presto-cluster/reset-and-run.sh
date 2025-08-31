#!/bin/bash
set -e

echo "🔴 Stopping and removing all Docker containers..."
docker rm -f $(docker ps -aq) 2>/dev/null || echo "No containers to remove."

echo "🗑️ Removing all Docker volumes created by docker-compose..."
docker-compose down -v

echo "Removing docker volumes"
docker volume prune -f

echo "Starting the cluster..."
docker-compose up