#!/bin/bash
pnpm nx g @nrwl/angular:application --addTailwind=true --setParserOptionsProject=true --skipTests=true --style=scss --prefix=evg --e2eTestRunner=none --routing=true "$@"
