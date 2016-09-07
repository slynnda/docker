#!/bin/bash

REPO=technicallyspeaking/dev-envs
IMAGE_TAG=base-centos-latest

docker build -t $REPO:$IMAGE_TAG . &&
docker save $REPO:$IMAGE_TAG | docker-squash -t squash -verbose | docker load &&
docker push $REPO:$IMAGE_TAG

