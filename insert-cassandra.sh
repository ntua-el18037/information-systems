#!/bin/bash


echo "Creating Cassandra keyspace sf1..."
docker exec -i cassandra cqlsh -e \
        "CREATE KEYSPACE IF NOT EXISTS sf1 WITH replication = {'class': 'SimpleStrategy', 'replication_factor': 1};"

# Insert sf1 to cassandra
echo "Inserting sf1 data into cassandra..."
docker exec -it presto-coordinator presto-cli \
        --server presto-coordinator:8080 --catalog cassandra \
        --schema sf1 --file /opt/presto-server/etc/insert-cassandra.sql