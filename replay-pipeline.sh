#!/bin/bash

docker exec -i jenkins-as-code_1 bash -c ' \
  mkdir -pv /tmp/jenkins-cli && \
  cd /tmp/jenkins-cli && \
  [ ! -f /tmp/jenkins-cli/jenkins-cli.jar ] && \
  wget http://localhost:8080/jnlpJars/jenkins-cli.jar \
'


docker exec -i jenkins-as-code_1 bash -c ' \
  java -jar /tmp/jenkins-cli/jenkins-cli.jar -s http://admin:admin@localhost:8080 \
  replay-pipeline jenkins-as-code/master \
  -s Jenkinsfile < /application/jenkins-as-code/Jenkinsfile \
'