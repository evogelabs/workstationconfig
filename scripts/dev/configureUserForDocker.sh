#!/bin/bash

sudo usermod -aG docker $1
sudo usermod --add-subuids 100000-165535 --add-subgids 100000-165535 $1
