#!/usr/bin/env bash

set -e
trap "echo '******* ERROR: Something went wrong.'; exit 1" SIGTERM
trap "echo '******* Caught SIGINT signal. Stopping...'; exit 2" SIGINT

echo "Setting up..."

apt update
apt install ffmpeg nodejs unzip wget npm -y
npm -g install http-server
mkdir -p /opt
cd /opt
wget https://github.com/phoboslab/jsmpeg/archive/master.zip
unzip master.zip
rm -f master.zip
cd jsmpeg-master
mv view-stream.html index.html
mv /assets/favicon.ico .
npm install ws

ENV RESOLUTION=640x480

echo "Done."
