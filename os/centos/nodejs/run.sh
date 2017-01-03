#!/bin/bash
source .buildvars
docker rm $DOCKER_CONTAINER_NAME &> /dev/null
docker run --name $DOCKER_CONTAINER_NAME -it $DOCKER_REPOSITORY:$DOCKER_IMAGE_TAG bash
