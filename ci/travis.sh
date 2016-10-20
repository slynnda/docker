docker build -t $BASE_IMAGE_ID os/centos/base && \
docker build -t $GO_IMAGE_ID os/centos/go && \
docker login --username="$DOCKER_USERNAME" --password="$DOCKER_PASSWORD" && \
docker push $BASE_IMAGE_ID && \
docker push $GO_IMAGE_ID
