#!/bin/bash

if [ ! -d www ]
then
mkdir www
fi

cd equilibria-webwallet
npm install
nodejs ./node_modules/typescript/bin/tsc --project tsconfig.prod.json
nodejs build.js
cd ../

cp -r equilibria-webwallet/src/. www
cp -r src_specific/. www
