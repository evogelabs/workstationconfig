#!/bin/bash

pg_restore --verbose --clean --if-exists --no-acl --no-owner \
    -h localhost -U evoge_user -p 5432 -d evoge_clinic_dev \
    -x --no-owner --role=evoge_user $1
