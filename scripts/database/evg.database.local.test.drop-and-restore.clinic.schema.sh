#!/bin/bash

pg_restore --clean --if-exists --no-acl --no-owner \
    -h localhost -U evoge_user -d evoge_clinic_test \
    -p 5433 \
    -x --no-owner --role=evoge_user $1
