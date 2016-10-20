docker build -t $BASE_IMAGE_TAG-$TRAVIS_BRANCH os/centos/base &&
docker build -t $GO_IMAGE_TAG-$TRAVIS_BRANCH os/centos/go
