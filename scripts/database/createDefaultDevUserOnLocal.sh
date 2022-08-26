#!/bin/bash

echo "create user evoge_user with password 'evoge_pass' createdb" | psql -h localhost -U postgres -p $1
