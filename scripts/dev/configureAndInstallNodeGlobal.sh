#!/bin/bash

case "$(uname -s)" in
  Darwin)
    # Nothing
  ;;

  Linux)
    echo "prefix=~/.npm-packages" > ~/.npmrc
  ;;

  *)
    # Nothing
  ;;
esac

echo "@evoge:registry=https://southamerica-east1-npm.pkg.dev/evoge-355414/npm/" >> ~/.npmrc
echo "@inteliclin:registry=https://southamerica-east1-npm.pkg.dev/evoge-355414/npm/" >> ~/.npmrc
echo "@fabri:registry=https://southamerica-east1-npm.pkg.dev/evoge-355414/npm/" >> ~/.npmrc
echo "@admin:registry=https://southamerica-east1-npm.pkg.dev/evoge-355414/npm/" >> ~/.npmrc
echo "//southamerica-east1-npm.pkg.dev/evoge-355414/npm/:always-auth=true" >> ~/.npmrc

npm install -g npm @angular/cli gatsby-cli npm-check-updates nx prettier typescript google-artifactregistry-auth
