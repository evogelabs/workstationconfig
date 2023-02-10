#!/bin/bash

echo "Excluindo o banco de dados dicom_daemon"
dropdb -h localhost -U evoge_user -p 5432 dicom_daemon

echo "Criando o banco de dados dicom_daemon"
createdb -h localhost -U evoge_user -p 5432 dicom_daemon

echo "Restaurando o banco de dados dicom_daemon a partir do arquivo $1"
pg_restore --verbose -h localhost -U evoge_user -p 5432 -d dicom_daemon -x --no-owner --role=evoge_user -j 2 -F c $1

echo "Banco de dados dicom_daemon  restaurado com sucesso"

