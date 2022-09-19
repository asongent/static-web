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

    stage('tag') {
      steps {
        sh ' docker tag test jmugu/static-web:v0'
      }
    }

  }
}
