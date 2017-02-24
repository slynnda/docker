#!/bin/bash
source .buildvars
docker push $DOCKER_REPOSITORY:$DOCKER_IMAGE_TAG
