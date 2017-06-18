#! /bin/sh

set -ex

/usr/bin/google-chrome-unstable --disable-gpu --headless --remote-debugging-address=0.0.0.0 --remote-debugging-port=9222 --user-data-dir=/data &

sleep 3
mkdir -p data/
for url in "$@"
do
  echo "$url"
  output=$(node url-to-filename.js "$url")
  node index.js --full --delay 5000 --url "$url" --output "$output"
done
