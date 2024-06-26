#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

REGISTRY="5.161.85.18:5000"
IMAGE="maven-project"

echo "** Logging in ***"
#docker login -u arelova -p $PASS $REGISTRY
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG $REGISTRY/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push $REGISTRY/$IMAGE:$BUILD_TAG
