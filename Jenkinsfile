pipeline {
  agent any
  stages {
    stage('login') {
      environment {
        DOCKER_USERNAME = 'jmugu'
        DOCKER_PASSWORD = 'Marvelous2014'
      }
      steps {
        sh 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'
      }
    }

  }
}