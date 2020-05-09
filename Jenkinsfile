pipeline {
    agent any
    stages {
        stage('Build image') {
            steps {
                echo 'Starting to build docker image'

                script {
                    def customImage = docker.build("jenkins-as-code:${env.BUILD_ID}")
                    customImage.push()
                    // TODO it should rebuild itself and replace itself
                }
            }
        }
    }
}