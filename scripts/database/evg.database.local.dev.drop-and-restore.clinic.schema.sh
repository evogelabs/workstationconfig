#!/bin/bash

pg_restore --verbose --clean --if-exists --no-acl --no-owner \
    -h localhost -U evoge_user -e evoge_clinic_dev \
    -p 5432 \
    -x --no-owner --role=evoge_user $1
