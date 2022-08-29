#!/bin/bash

echo "Excluindo o banco de dados evoge_keycloak_test"
dropdb -h localhost -U evoge_user -p 5433 evoge_keycloak_test

echo "Criando o banco de dados evoge_keycloak_test"
createdb -h localhost -U evoge_user -p 5433 evoge_keycloak_test

echo "Restaurando o banco de dados evoge_keycloak_test a partir do arquivo $1"
pg_restore -h localhost -U evoge_user -p 5433 -d evoge_keycloak_test -x --no-owner --role=evoge_user -j 2 -F c $1

echo "update component_config set value = 'evoge_user' where component_id = 'b8fc63d3-41da-4130-886a-c1d8c527447d' and name = 'username'" | psql -h localhost -U evoge_user -p 5433 evoge_keycloak_test
echo "update component_config set value = 'evoge_pass' where component_id = 'b8fc63d3-41da-4130-886a-c1d8c527447d' and name = 'password'" | psql -h localhost -U evoge_user -p 5433 evoge_keycloak_test
echo "update component_config set value = 'jdbc:postgresql://test-postgres:5432/evoge_clinic_test' where component_id = 'b8fc63d3-41da-4130-886a-c1d8c527447d' and name = 'jdbcUrl'" | psql -h localhost -U evoge_user -p 5433 evoge_keycloak_test
echo "update credential set secret_data = '{\"value\":\"ryrbm+M9P5t70LZxh9qgynTXc3RnOpnncJLzzFQn2t65h7hhKYCaQNeeuiaKqwlumkebpOoRS0GmcRQbq8i2rw==\",\"salt\":\"dcJpQNH6bdYLLUhGNLsEPA==\",\"additionalParameters\":{}}'" | psql -h localhost -U evoge_user -p 5433 evoge_keycloak_test

echo "Banco de dados evoge_keycloak_test restaurado com sucesso"
