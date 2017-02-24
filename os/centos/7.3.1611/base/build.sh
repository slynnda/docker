#!/bin/bash
source .buildvars
echo Building from branch: $GIT_BRANCH
docker build \
  --build-arg $GIT_BRANCH \
  -t $DOCKER_REPOSITORY:$DOCKER_IMAGE_TAG .
