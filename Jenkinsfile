pipeline {
  agent any
  stages {
    stage('build') {
      environment {
        DOCKER_USERNAME = 'jmugu'
        DOCKER_PASSWORD = 'Marvelous2014'
      }
      steps {
        sh 'docker build -t test .'
      }
    }

    stage('scan') {
      steps {
        sh 'trivy image test'
      }
    }

  }
}