#!/usr/bin/env ash

set -e
trap "echo '******* ERROR: Something went wrong.'; exit 1" SIGTERM
trap "echo '******* Caught SIGINT signal. Stopping...'; exit 2" SIGINT

echo "Setting up..."
mkdir -p /opt
cd /opt
wget https://github.com/phoboslab/jsmpeg/archive/master.zip
unzip master.zip
rm -f master.zip
cd jsmpeg-master
mv view-stream.html index.html
mv /assets/favicon.ico .

echo "Done."