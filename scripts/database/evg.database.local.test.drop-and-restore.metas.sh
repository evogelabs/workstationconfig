#!/bin/bash

pg_restore --clean --if-exists --no-acl --no-owner \
    -h localhost -U evoge_user -p 5433 -d metas_test \
    -n public \
    -x --no-owner --role=evoge_user $1

