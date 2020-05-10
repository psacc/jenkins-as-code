#!/bin/bash
docker build . -t jenkins-as-code && \
docker run -d -p 49001:8080 \
    --name jenkins-as-code_1 \
    --privileged \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v $PWD/jenkins:/var/jenkins_home:z \
    -v $PWD:/application/jenkins-as-code \
    -t \
    jenkins-as-code && \
echo "Starting..."