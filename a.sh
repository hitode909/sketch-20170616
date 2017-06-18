#! /bin/sh

set -ex

data_dir="data/$$"
mkdir -p $data_dir
for url in "$@"
do
  echo "$url"
  /usr/bin/google-chrome-unstable --disable-gpu --headless --remote-debugging-address=0.0.0.0 --remote-debugging-port=9222 --user-data-dir=/data &
  CHROME_PID=$!
  sleep 3

  output=$(node url-to-filename.js "$url")
  node index.js --full --delay 1000 --url "$url" --output "$data_dir/$output"
  node upload-to-gyazo.js "$data_dir/$output" "$url" "$gyazo_access_token" "$gyazo_collection_id"
  kill $CHROME_PID
done

rm -rf $data_dir
