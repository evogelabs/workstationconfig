#!/bin/bash

START_DIR=$(pwd)

for i in `find . -name "wrapper"` ; do 
    cd $i
    cd ..
    cd ..
    pwd
    ./gradlew wrapper --gradle-version=$1 --distribution-type=all
    cd $START_DIR
done
