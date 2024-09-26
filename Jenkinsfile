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
                // Checkout source code từ GitHub
                git branch: "${GIT_BRANCH}",
                    url: "${GIT_REPO}"
            }
    }

    stage('Move to Target Directory') {
            steps {
                // Tạo thư mục nếu chưa có
                sh 'mkdir -p ${TARGET_DIR}'

                // Sao chép code vào thư mục đích
                sh 'cp -r * ${TARGET_DIR}'
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