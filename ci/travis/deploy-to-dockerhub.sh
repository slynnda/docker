if [[ $TRAVIS_BRANCH != 'master' ]]
  docker push $BASE_IMAGE_TAG:$TRAVIS_BRANCH
else
  docker push $BASE_IMAGE_TAG
fi
