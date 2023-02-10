#!/bin/bash

echo "Excluindo o banco de dados tributecerto_test"
dropdb -h localhost -U evoge_user -p 5433 tributecerto_test

echo "Criando o banco de dados tributecerto_test"
createdb -h localhost -U evoge_user -p 5433 tributecerto_test

echo "Restaurando o banco de dados tributecerto_test a partir do arquivo $1"
pg_restore --verbose -h localhost -U evoge_user -p 5433 -d tributecerto_test -x --no-owner --role=evoge_user -j 2 -F c $1

echo "Banco de dados tributecerto_test restaurado com sucesso"
