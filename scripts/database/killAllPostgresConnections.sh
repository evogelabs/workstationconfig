#!/bin/bash

if [ -z $1 ]; then
    echo "Informe o nome do banco de dados"
    echo "Exemplo: ./killAllPostgresConnections.sh <nome do banco de dados>"
    echo "Exemplo: ./killAllPostgresConnections.sh teste"
    exit 0
fi

echo "SELECT
	pg_terminate_backend(pg_stat_activity.pid)
FROM
	pg_stat_activity
WHERE
	pg_stat_activity.datname = 'database_name'
	AND pid <> pg_backend_pid();" | psql -h localhost -U evoge_user -d $1
