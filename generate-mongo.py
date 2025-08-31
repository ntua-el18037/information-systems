import prestodb
import os

# Connect to Presto
conn = prestodb.dbapi.connect(
    host='localhost',
    port=8080,
    user='user'
)
cur = conn.cursor()

tables = [
    "call_center", "catalog_page", "catalog_returns", "catalog_sales",
    "customer", "customer_address", "customer_demographics", "date_dim",
    "household_demographics", "income_band", "inventory", "item",
    "promotion", "reason", "ship_mode", "store",
    "store_returns", "store_sales", "time_dim", "warehouse",
    "web_page", "web_returns", "web_sales", "web_site"
]

def map_type(presto_type):
    presto_type = presto_type.lower()
    if presto_type.startswith("char") or presto_type.startswith("varchar"):
        return "VARCHAR"
    if presto_type.startswith("decimal"):
        return "DOUBLE"
    if presto_type in ("date", "time", "timestamp"):
        return "VARCHAR"
    if presto_type in ("bigint", "integer", "smallint", "tinyint"):
        return "BIGINT"
    if presto_type in ("real", "double", "float"):
        return "DOUBLE"
    if presto_type == "boolean":
        return "BOOLEAN"
    # fallback to string
    return "VARCHAR"

# Ensure presto-cluster folder exists
os.makedirs("presto-cluster", exist_ok=True)

output_file = os.path.join("presto-cluster", "insert-mongo.sql")

with open(output_file, "w") as f:
    f.write("-- This file is generated automatically, don't modify.\n\n")
    for tbl in tables:
        cur.execute(f"DESCRIBE tpcds.sf1.{tbl}")
        cols = cur.fetchall()
        select_list = ",\n    ".join(
            [f"CAST({col[0]} AS {map_type(col[1])}) AS {col[0]}" for col in cols]
        )
        sql = (
            f"CREATE TABLE sf1.{tbl} AS \n"
            f"SELECT \n    {select_list}\n"
            f"FROM tpcds.sf1.{tbl};\n\n"
        )
        f.write(sql)

print(f"✅ File written to {output_file}")
