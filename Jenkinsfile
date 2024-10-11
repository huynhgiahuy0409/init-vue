pipeline {
  agent any
  environment {
        IMAGE_NAME = 'init-vue-app'
        CONTAINER_NAME = 'init-vue-app-container'
        GIT_REPO = 'https://github.com/huynhgiahuy0409/init-vue.git'
        GIT_BRANCH = 'main'
        TARGET_DIR = '/projects/huy'
  }
  stages {
     stage('Checkout Code') {
            steps {
              echo 'Build process completed.'
            }
      }
  }

  post {
    always {
        // In ra thông báo sau khi hoàn thành pipeline
        echo 'Pipeline executed successfully!'
    }
  }
}
