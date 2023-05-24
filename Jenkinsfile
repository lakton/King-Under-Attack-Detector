pipeline {
  agent any

  stages {
    stage('Build') {
      steps {
        sh 'make'
      }
    }

    stage('Debug') {
      steps {
        sh 'make debug'
      }
    }
    
    stage('Cleanup') {
      steps {
        sh 'make clean'
      }
    }
  }
}
