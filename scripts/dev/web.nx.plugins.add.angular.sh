#!/bin/bash
pnpm add -Dw @nrwl/angular
pnpm nx g @nrwl/angular:init --e2eTestRunner=cypress --unitTestRunner=jest --style=scss
