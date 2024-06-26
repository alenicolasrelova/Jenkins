#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
#echo $PASS >> /tmp/.auth

#scp -i /opt/prod /tmp/.auth root@5.161.85.18:/tmp/.auth
scp /tmp/.auth root@5.161.85.18:/tmp/.auth
scp ./jenkins/deploy/publish root@5.161.85.18:/tmp/publish
ssh root@5.161.85.18 /tmp/publish
