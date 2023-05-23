 #!/bin/bash -x
set -e
echo "Creating the default user and database..."
psql --username "postgres" --dbname "postgres" --port 5432 <<-EOSQL
CREATE USER ${DEFAULT_USER} WITH PASSWORD '${DEFAULT_USER_PASSWORD}';
CREATE DATABASE ${DEFAULT_DB} WITH OWNER ${DEFAULT_USER};
EOSQL
echo "---- Ending setup sucessfully ----"