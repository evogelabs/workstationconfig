#!/bin/bash

source ./_vars.sh

for i in $DOT_FILES; do
  cp -v ~/.$i ./seed/$i
done
