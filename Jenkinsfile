pipeline {
  agent any
  stages {
    stage('build') {
      environment {
        DOCKER_USERNAME = 'jmugu'
        DOCKER_PASSWORD = 'Marvelous2014'
      }
      steps {
        sh 'docker build -t jmugu/stactic-web .'
      }
    }

    stage('scan') {
      steps {
        sh 'trivy image jmugu/static-web'
      }
    }

    stage('tag') {
      steps {
        sh ' docker tag test jmugu/static-web:v0'
      }
    }

    stage('login') {
      steps {
        sh 'docker login -u jmugu -p passs'
      }
    }

  }
}