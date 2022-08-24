#!/bin/bash

#!/bin/bash

if [ -z $1 ] || [ -z $2 ]; then
    echo "Informe o nome do banco de dados e o nome do schema"
    echo "Exemplo: ./dropAndLoadDatabase.sh <nome do banco de dados> <nome do schema>"
    echo "Exemplo: ./dropAndLoadDatabase.sh teste teste"
    exit 0
fi

DATA=$(date '+%Y_%m_%d-%H_%M_%S')

HOST="localhost"
PORT="5432"
USER="evoge_user"

echo "Dump $2"
pg_dump -h $HOST -p $PORT -U $USER -d $1 --schema=$2 -F c -f ${2}_${DATA}.backup
