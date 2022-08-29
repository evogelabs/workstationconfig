#!/bin/bash

echo "Excluindo o banco de dados evoge_keycloak_dev"
dropdb -h localhost -U evoge_user -p 5432 evoge_keycloak_dev

echo "Criando o banco de dados evoge_keycloak_dev"
createdb -h localhost -U evoge_user -p 5432 evoge_keycloak_dev

echo "Restaurando o banco de dados evoge_keycloak_dev a partir do arquivo $1"
pg_restore --verbose -h localhost -U evoge_user -p 5432 -d evoge_keycloak_dev -x --no-owner --role=evoge_user -j 2 -F c $1

echo "Banco de dados evoge_keycloak_dev restaurado com sucesso"
