#!/bin/bash
source .buildvars
docker run --name $DOCKER_CONTAINER_NAME -it $DOCKER_REPOSITORY:$DOCKER_IMAGE_TAG bash
