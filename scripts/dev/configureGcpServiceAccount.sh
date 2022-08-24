#!/bin/bash

STAR_DIR=$(pwd)
# cd $HOME
# curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-cli-398.0.0-linux-x86_64.tar.gz
# tar zxvf google-cloud-cli-398.0.0-linux-x86_64.tar.gz
# cd google-cloud-sdk
# ./install.sh

# cd $HOME

if [ -f "$HOME/google-cloud-sdk/path.zsh.inc" ]; then . "$HOME/google-cloud-sdk/path.zsh.inc"; fi
if [ -f "$HOME/google-cloud-sdk/completion.zsh.inc" ]; then . "$HOME/google-cloud-sdk/completion.zsh.inc"; fi

gcloud update

gcloud auth activate-service-account --key-file=$HOME/gcpkeys/default.json

gcloud auth configure-docker southamerica-east1-docker.pkg.dev

cd $STAR_DIR
