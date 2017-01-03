docker build -t $BASE_IMAGE_ID os/centos/base && \
docker build -t $GO_IMAGE_ID os/centos/go && \
docker build -t $NODEJS_IMAGE_ID os/centos/nodejs && \
docker login --username="$DOCKER_USERNAME" --password="$DOCKER_PASSWORD" && \
docker push $BASE_IMAGE_ID && \
docker push $GO_IMAGE_ID && \
docker push $NODEJS_IMAGE_ID
