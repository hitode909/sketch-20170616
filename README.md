based on https://github.com/schnerd/chrome-headless-screenshots

```
docker build -t sketch0616 .
docker run --cap-add=SYS_ADMIN --volume "$PWD":/app sketch0616
 docker run --cap-add=SYS_ADMIN --volume "$PWD":/app --env gyazo_access_token="GYAZO_ACCESS_TOKEN" --env gyazo_collection_id="GYAZO_COLLECTION_ID" sketch0616 URLS_TO_TAKE_A_SCREEN_SHOT
```
