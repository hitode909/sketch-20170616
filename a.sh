#! /bin/sh

set -ex

/usr/bin/google-chrome-unstable --disable-gpu --headless --remote-debugging-address=0.0.0.0 --remote-debugging-port=9222 --user-data-dir=/data &

sleep 3

node index.js --full --delay 5 --url http://blog.sushi.money/
