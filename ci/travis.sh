#!/bin/bash

# BUILD_IMAGES:

# CentOS:
docker build -t $BASE_IMAGE_ID os/$OS/$OS_VERSION/base && \
docker build -t $GO_IMAGE_ID os/$OS/$OS_VERSION/go && \
docker build -t $NODEJS_IMAGE_ID os/$OS/$OS_VERSION/nodejs && \

# Login to DockerHub
docker login --username="$DOCKER_USERNAME" --password="$DOCKER_PASSWORD" && \

# PUSH_IMAGES:

# CentOS
docker push $BASE_IMAGE_ID && \
docker push $GO_IMAGE_ID && \
docker push $NODEJS_IMAGE_ID
