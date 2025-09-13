# Design and Analysis of Information Systems Term Project

# Installation & Setup

This project evaluates **PrestoDB** performance with PostgreSQL, MongoDB, and Cassandra using the **TPC-DS benchmark**.  
It is fully containerized with **Docker** and **Docker Compose** for reproducibility.

---

## Prerequisites

- [Docker](https://docs.docker.com/get-docker/) (>= 20.x)  
- [Docker Compose](https://docs.docker.com/compose/install/) (>= v2)  
- Git (for cloning the repository)
- Python : Make sure you have Python 3.11.9 installed

---

## Quick Start

### 1. Clone the repository

```bash
git clone https://github.com/ntua-el18037/information-systems.git
```
```bash
cd information-systems/
```
```bash
python3 -m venv venv
```
For Linux/Mac :
```bash
source venv/bin/activate
```
For Windows on powershell :
```bash
venv\Scripts\activate
```

Then install the required dependencies :
```bash
pip install -r requirements.txt
```

### 2. Start the cluster

You have two options:

Option A: Fresh start (recommended)
This removes all containers, deletes volumes, and starts clean.
```bash
cd presto-cluster/
```
```bash
chmod +x reset-and-run.sh && ./reset-and-run.sh
```
Option B: Keep existing data
Start the cluster without removing existing volumes.
```bash
docker-compose up
```
This will launch:

PrestoDB Coordinator (localhost:8080), 1 Presto Worker and the 3 databases (PostgreSQL, MongoDB, Cassandra).

### 3. Populate the databases

Run the following command to populate the databases with sf1 schema. In order to insert different schema, change the parameter --schema in insert-cassandra.sh, insert-mongo.sh and insert-postgres.sh.
```bash
chmod +x *.sh && ./insert.sh
```
This, depending on the schema may take quite some time to complete execution.

### 4. Run the benchmark
```bash
docker exec -it presto-coordinator bash
```
```bash
cd /opt/benchmark-driver
```
```bash
./presto-benchmark-driver
--server presto-coordinator:8080
--catalog <database>
--schema sf1
--suite suite.json
```
where database is mongodb, postgresql or cassandra.

### 5. Plot the results
After copying and pasting the above output in the .txt files in the out/ folder, run :
```python
python plotter.py
```
in order to generate the diagrams. They will be saved in out/ directory.
Ensure that the virtual environment is used.