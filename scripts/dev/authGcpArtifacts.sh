#!/bin/bash

yarn gcp-auth refresh

npx google-artifactregistry-auth --credential-config $NPMRCFILE --repo-config $NPMRCFILE

