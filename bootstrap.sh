#!/bin/bash
docker build . -t jenkins-as-code && \
docker run -d -p 49001:8080 \
    --name jenkins-as-code_1 \
    -v $PWD/jenkins:/var/jenkins_home:z \
    -t \
    jenkins-as-code && \
echo "Starting..."