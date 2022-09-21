#!/bin/bash

rm -rf node_modules
rm -f yarn.lock

yarn set version berry

yarn plugin import @yarnpkg/plugin-interactive-tools
yarn plugin import @yarnpkg/plugin-typescript
yarn plugin import @yarnpkg/plugin-workspace-tools
yarn plugin import https://github.com/AndyClausen/yarn-plugin-gcp-auth/releases/latest/download/plugin-gcp-auth.js
