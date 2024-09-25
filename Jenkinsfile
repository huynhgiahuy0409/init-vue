pipeline {
  agent any
  environment {
        IMAGE_NAME = 'init-vue-app'
        CONTAINER_NAME = 'init-vue-app-container'
  }
  stages {
    stage('Checkout Code') {
      steps {
          git branch: 'main', url: 'https://github.com/huynhgiahuy0409/init-vue.git'
      }
    }

    stage('Build Docker Image') {
          steps {
              script {
                  // Build Docker image từ Dockerfile
                  'docker build -t $IMAGE_NAME .'
              }
          }
    }
  }
}