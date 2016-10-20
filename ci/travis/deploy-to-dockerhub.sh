if [ $TRAVIS_BRANCH != 'master' ]; then
  docker push $BASE_IMAGE_TAG-$TRAVIS_BRANCH
else
  docker push $BASE_IMAGE_TAG
fi
