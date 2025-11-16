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

```bash
# Start all services
make up

# Stop all services
make down

# Remove containers and volumes for a fresh start
make clean
