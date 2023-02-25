#!/bin/bash

mkdir -p $HOME/Work/Devel/Repos/GitHub/evogelabs
cd $HOME/Work/Devel/Repos/GitHub/evogelabs

for i in `gh repo list evogelabs -L 200 | sort | cut -f 1` ; do 
    echo gh repo clone $i
    gh repo clone $i
done
