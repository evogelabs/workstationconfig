#!/bin/bash

DATA=$(date '+%Y_%m_%d-%H_%M_%S')

PORT="5432"
USER="evoge_user"

echo "Dump $2"
pg_dump -h $1 -p $PORT -U $USER -d $2 --schema=$3 -F c -f ${3}_${DATA}.backup
