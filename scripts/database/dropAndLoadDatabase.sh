#!/bin/bash

if [ -z $1 ] || [ -z $2 ]; then
    echo "Informe o nome do banco de dados e o nome do arquivo de backup"
    echo "Exemplo: ./dropAndLoadDatabase.sh <nome do banco de dados> <nome do arquivo de backup>"
    echo "Exemplo: ./dropAndLoadDatabase.sh teste teste.sql"
    exit 0
fi

echo "Finalizando todas as conexões do banco de dados $1"
killAllPostgresConnections.sh $1

echo "Excluindo o banco de dados $1"
dropdb -h localhost -U evoge_user $1

echo "Criando o banco de dados $1"
createdb -h localhost -U evoge_user $1

echo "Restaurando o banco de dados $1 a partir do arquivo $2"
pg_restore --verbose -h localhost -U evoge_user -d $1 -x --no-owner --role=evoge_user -j 2 -F c $2

echo "Banco de dados $1 restaurado com sucesso"
