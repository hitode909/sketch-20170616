based on https://github.com/schnerd/chrome-headless-screenshots

```
docker build -t sketch0616 .
docker run --cap-add=SYS_ADMIN --volume "$PWD":/app sketch0616
```
