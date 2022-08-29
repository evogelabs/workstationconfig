#!/bin/bash

pg_restore --verbose --clean --if-exists --no-acl --no-owner \
    -h localhost -U evoge_user -p 5432 -d evoge_clinic_dev \
    -n public \
    -x --no-owner --role=evoge_user $1

echo "update jhi_user set password_hash = '{bcrypt}\$2a\$10\$.Y9c/dm03cejoLM9uW5HG.fM220CeAtVI5tYK1sEL8tzYqxFdEzIS'" | psql \
        -h localhost -U evoge_user -d evoge_clinic_dev
