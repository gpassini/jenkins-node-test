#!/usr/bin/env sh

npm install --save --ignore-scripts
curl -o ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
unzip ngrok.zip
rm node_modules/ngrok/bin/ngrok
cp ngrok node_modules/ngrok/bin/ngrok
