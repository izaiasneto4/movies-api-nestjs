#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER pguser;
    CREATE DATABASE mksnest;
    GRANT ALL PRIVILEGES ON DATABASE mksnest TO pguser;
EOSQL
