pipeline {
  agent any
  stages {
    stage('build') {
      environment {
        DOCKER_USERNAME = 'jmugu'
        DOCKER_PASSWORD = 'Marvelous2014'
      }
      steps {
        sh '''cd static-web

docker build -t test .'''
      }
    }

    stage('scan') {
      steps {
        sh 'trivy --no-progress --exit-code 1 --severity HIGH,CRITICAL test'
      }
    }

    stage('tag') {
      steps {
        sh ' docker tag test jmugu/static-web:v0'
      }
    }

  }
}