#!/bin/bash

# Create schema sf1
# echo "Creating sf1 schema in mongo"
# docker exec -it postgres psql -U root -d presto -c "CREATE SCHEMA IF NOT EXISTS sf1;"

# Insert sf1 to mongo
echo "Inserting sf1 data into mongo..."
docker exec -it presto-coordinator presto-cli \
        --server presto-coordinator:8080 --catalog mongodb \
        --schema sf1 --file /opt/presto-server/etc/insert-mongo.sql