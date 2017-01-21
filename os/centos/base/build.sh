#!/bin/bash
source .buildvars
echo $GIT_BRANCH
docker build \
  --build-arg $GIT_BRANCH \
#  --squash \
#  --compress \
  -t $DOCKER_REPOSITORY:$DOCKER_IMAGE_TAG .
