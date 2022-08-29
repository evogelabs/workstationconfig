#!/bin/bash

for i in `ls | egrep -v "public.backup"`; do echo $i ; evg.database.local.test.drop-and-restore.clinic.schema.sh $i ; done