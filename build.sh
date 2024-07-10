#!/bin/sh
[[ -s $HOME/.nvm/nvm.sh ]] && source $HOME/.nvm/nvm.sh && nvm use 18
npm install
npm ci
npm run setheapsize
npx grunt prod
docker build --tag ghcr.io/sewera/cyberchef:latest .
