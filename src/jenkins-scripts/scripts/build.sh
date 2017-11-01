#!/usr/bin/env sh

echo 'Installing dependencies without executing scripts'
set -x
npm install --ignore-scripts
set +x
#curl -o ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
#unzip ngrok.zip
#rm node_modules/ngrok/bin/ngrok
#cp ngrok node_modules/ngrok/bin/ngrok
