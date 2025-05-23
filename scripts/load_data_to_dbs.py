import prestodb.dbapi
import psycopg2
from pymongo import MongoClient
from cassandra.cluster import Cluster

TPCDS_CATALOG = 'tcpds'
TPCDS_SCHEMA = 'sf10'
TABLES = ['call_center']  # add more tables as needed
ROW_LIMIT = 1000

POSTGRES_SCHEMA = 'sf10'
MONGO_DB = 'sf10'
CASSANDRA_KEYSPACE = 'sf10'

def map_postgres_type(col_type):
    t = col_type.lower()
    if 'varchar' in t or 'char' in t:
        return 'text'
    elif 'bigint' in t or 'integer' in t:
        return 'int'
    elif 'double' in t or 'decimal' in t or 'real' in t:
        return 'double precision'
    elif 'date' in t or 'time' in t:
        return 'text'
    else:
        return 'text'

def map_cassandra_type(col_type):
    t = col_type.lower()
    if 'varchar' in t or 'char' in t or 'text' in t:
        return 'text'
    elif 'bigint' in t or 'integer' in t:
        return 'int'
    elif 'double' in t or 'decimal' in t or 'real' in t or 'float' in t:
        return 'double'
    elif 'boolean' in t:
        return 'boolean'
    elif 'date' in t or 'time' in t:
        return 'text'
    else:
        return 'text'

def get_schema(presto_cursor, table):
    presto_cursor.execute(f"DESCRIBE {TPCDS_CATALOG}.{TPCDS_SCHEMA}.{table}")
    cols = presto_cursor.fetchall()
    return [(col[0], col[1]) for col in cols if col[0] and not col[0].startswith("#")]

def fetch_rows(presto_cursor, table, columns):
    col_names = ', '.join(columns)
    presto_cursor.execute(
        f"SELECT {col_names} FROM {TPCDS_CATALOG}.{TPCDS_SCHEMA}.{table} LIMIT {ROW_LIMIT}")
    return presto_cursor.fetchall()

def load_postgres(table, schema, rows):
    conn = psycopg2.connect("host=localhost dbname=testdb user=postgres password=root")
    cur = conn.cursor()

    # Create schema if not exists
    cur.execute(f"CREATE SCHEMA IF NOT EXISTS {POSTGRES_SCHEMA}")
    # Drop table if exists inside the schema
    cur.execute(f"DROP TABLE IF EXISTS {POSTGRES_SCHEMA}.{table}")
    columns_def = ', '.join(f"{name} {map_postgres_type(type_)}" for name, type_ in schema)
    cur.execute(f"CREATE TABLE {POSTGRES_SCHEMA}.{table} ({columns_def})")

    placeholders = ', '.join(['%s'] * len(schema))
    cur.executemany(
        f"INSERT INTO {POSTGRES_SCHEMA}.{table} VALUES ({placeholders})", rows
    )
    conn.commit()
    conn.close()
    print(f"✅ Loaded {table} into PostgreSQL schema {POSTGRES_SCHEMA}")

def load_mongo(table, schema, rows):
    client = MongoClient("mongodb://root:root@localhost:27017/admin")
    db = client[MONGO_DB]  # use database sf10 instead of benchmark
    col = db[table]
    col.drop()

    keys = [col[0] for col in schema]
    docs = [dict(zip(keys, row)) for row in rows]
    col.insert_many(docs)
    print(f"✅ Loaded {table} into MongoDB database {MONGO_DB}")

def load_cassandra(table, schema, rows):
    cluster = Cluster(['localhost'])
    session = cluster.connect()
    session.execute(f"""
        CREATE KEYSPACE IF NOT EXISTS {CASSANDRA_KEYSPACE}
        WITH replication = {{'class': 'SimpleStrategy', 'replication_factor': 1}}
    """)
    session.set_keyspace(CASSANDRA_KEYSPACE)

    session.execute(f"DROP TABLE IF EXISTS {table}")

    cols = ', '.join(f"{name} {map_cassandra_type(type_)}" for name, type_ in schema)
    primary_key = schema[0][0]  # first column as PK
    create_stmt = f"CREATE TABLE {table} ({cols}, PRIMARY KEY ({primary_key}))"
    session.execute(create_stmt)

    col_names = ', '.join(name for name, _ in schema)
    placeholders = ', '.join(['%s'] * len(schema))
    insert_stmt = f"INSERT INTO {table} ({col_names}) VALUES ({placeholders})"

    # for row in rows:
    #     session.execute(insert_stmt, row)
    for row in rows:
        casted_row = [
            float(value) if map_cassandra_type(col_type) == 'double' and value is not None else value
            for value, (_, col_type) in zip(row, schema)
        ]
        session.execute(insert_stmt, casted_row)
    print(f"✅ Loaded {table} into Cassandra keyspace {CASSANDRA_KEYSPACE}")


def main():
    presto_conn = prestodb.dbapi.connect(
        host='localhost', port=8080, user="test",
        catalog=TPCDS_CATALOG, schema=TPCDS_SCHEMA
    )
    cursor = presto_conn.cursor()

    for table in TABLES:
        print(f"🔄 Processing table: {table}")
        schema = get_schema(cursor, table)
        columns = [col[0] for col in schema]
        rows = fetch_rows(cursor, table, columns)

        load_postgres(table, schema, rows)
        load_mongo(table, schema, rows)
        load_cassandra(table, schema, rows)

    print("✅ All tables processed successfully.")

if __name__ == "__main__":
    main()
