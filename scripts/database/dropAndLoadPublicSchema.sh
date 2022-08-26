#!/bin/bash

if [ -z $1 ] || [ -z $2 ]; then
    echo "Informe o nome do banco de dados e o nome do arquivo de backup"
    echo "Exemplo: ./dropAndLoadDatabase.sh <nome do banco de dados> <nome do arquivo de backup>"
    echo "Exemplo: ./dropAndLoadDatabase.sh teste teste.sql"
    exit 0
fi

echo "Finalizando todas as conexões do banco de dados $1"
killAllPostgresConnections.sh $1 $3

echo "Restaurando o schema public do banco de dados $1 a partir do arquivo $2"
pg_restore --verbose --clean --if-exists --no-acl --no-owner \
    -h localhost -U evoge_user -p $3 -d $1 \
    -n public \
    -x --no-owner --role=evoge_user $2
