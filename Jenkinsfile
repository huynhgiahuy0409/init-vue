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

      stage('Build Docker Image') {
            steps {
                // Build the Docker image
                script {
                    // Change 'your-image-name' to the desired image name
                    // Change '.' to the path to your Dockerfile if not in the root
                    def image = docker.build("${IMAGE_NAME}", ".")
                }
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
