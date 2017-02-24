#!/bin/bash
source .buildvars
docker build -t $DOCKER_REPOSITORY:$DOCKER_IMAGE_TAG .
