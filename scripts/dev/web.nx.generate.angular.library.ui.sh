#!/bin/bash

# prontuario --publishable --strict --routing --lazy --importPath="@evoge/prontuario" "$@"

pnpm nx g @nrwl/angular:library \
    -c "OnPush" \
    --simpleModuleName=true \
    --prefix="evg" \
    --buildable=true \
    --addModuleSpec=false \
    --compilationMode="full" \
    --addTailwind=true \
    --importPath="@evoge/ui"



pnpm nx g @nrwl/angular:library \
    -c "OnPush" \
    --simpleModuleName=true \
    --prefix="evg" \
    --buildable=true \
    --addModuleSpec=false \
    --compilationMode="full" \
    --addTailwind=true \
    --importPath="@evoge/tables" \
    tables







# pnpm nx g @nrwl/angular:library -c "OnPush" --simpleModuleName=true --prefix="evg" --buildable=true --addModuleSpec=false --compilationMode="full" --addTailwind=true --importPath="@evoge/components"

