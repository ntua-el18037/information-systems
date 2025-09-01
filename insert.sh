#!/bin/bash
# insert-all.sh
# Executes inserts into Mongo, Cassandra, and Postgres in order

set -e  # exit immediately if a command exits with a non-zero status

echo "========== Starting Mongo insert =========="
./insert-mongo.sh
echo "========== Mongo insert finished =========="

echo "========== Starting Postgres insert =========="
./insert-postgres.sh
echo "========== Postgres insert finished =========="

# echo "========== Starting Cassandra insert =========="
# ./insert-cassandra.sh
# echo "========== Cassandra insert finished =========="

echo "All inserts completed successfully!"
