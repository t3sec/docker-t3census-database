#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
	CREATE USER t3census_dbu WITH ENCRYPTED PASSWORD 't3census';
	CREATE DATABASE t3census_db;
	CREATE DATABASE t3census_import_db;
	GRANT ALL PRIVILEGES ON DATABASE t3census_db TO t3census_dbu;
EOSQL