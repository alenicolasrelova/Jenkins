#!/bin/bash

echo "***************************"
echo "** Building jar ***********"
echo "***************************"
WORKSPACE=/srv/jenkins-proyect/workspace/Final_Project/java-app

docker run --rm  -v  $WORKSPACE/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$@" #parametros mvn -B -DskipTests clean package
