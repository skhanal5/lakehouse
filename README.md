# Lakehouse (Local Iceberg Setup)

A lightweight **local data warehouse** built on Apache Iceberg, designed for testing and development. This setup uses Docker to run all components locally.

## Components

| Component             | Description |
|----------------------|-------------|
| **Metastore**         | Apache Hive for storing table metadata for Iceberg |
| **Query Engine**      | Trino is the SQL engine for querying Iceberg tables |
| **Object Storage**    | MinIO will be the S3-compatible storage for Iceberg table data |
| **Metastore Database**| PostgreSQL is the underlying backend database for the Hive Metastore |

## Features

- Fully local, containerized environment  
- Supports Iceberg tables with Parquet format and ZSTD compression  
- Easily extendable to include Nessie for versioned tables  

## Quick Start

1. Set up the environment variables necessary. You can define a `.env` in the project root like so. Make note of the values that are being passed in.

```
# Metastore database
POSTGRES_DB=metastore_db
POSTGRES_USER=hive
POSTGRES_PASSWORD=password

# Hive metastore
METASTORE_URL=jdbc:postgresql://metastore-db:5432/metastore_db
METASTORE_USER=hive
METASTORE_PASSWORD=password
METASTORE_DB_DRIVER=postgres

# MinIO Credentials
MINIO_ROOT_USER=minioadmin
MINIO_ROOT_PASSWORD=minioadmin
```

2. Spin up the containers. Refer to the Makefile for more information.

```bash
# Start all services
make up

# Stop all services
make down

# Remove containers and volumes for a fresh start
make clean
