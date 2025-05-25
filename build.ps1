$env:HTTPS_PROXY="http://127.0.0.1:10808"
$env:HTTP_PROXY="http://127.0.0.1:10808"

docker compose down
docker build --build-arg PUPPETEER_SKIP_DOWNLOAD=0 --build-arg TARGETPLATFORM=linux/amd64 -t rsshub-with-chromium .
docker compose up -d
docker image prune -f
#docker save -o rsshub.tar rsshub-with-chromium
