#!/bin/bash


BASE_VERSION=2.60.3
UPDATE_VERSION=2.217

docker pull jenkins:${BASE_VERSION}
#wget http://updates.jenkins-ci.org/download/war/${UPDATE_VERSION}/jenkins.war

docker build -t jenkins:${UPDATE_VERSION} .

docker run -d -p 8080:8080 -p 50000:50000 --name jenkins jenkins:2.217
docker logs jenkins

#docker exec -it jenkins bash
#cd /usr/lib/jenkins
#java -jar jenkins.war
