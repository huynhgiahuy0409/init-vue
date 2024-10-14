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
        stage('Clone Repository') {
            steps {
                // Clone the Vue.js project from Git
                git branch: 'main', url: "${GIT_REPO}"
            }
        }

        stage('Install Dependencies') {
            steps {
                // Install npm packages required for the project
                bat 'npm install'
            }
        }

        stage('Build Project') {
            steps {
                // Run the build command to create the production build
                bat 'npm run build'
            }
        }
    }
    
    post {
        success {
            echo 'Vue.js project built successfully!'
            // (Optional) Add deployment steps here if required
        }
        failure {
            echo 'Build failed.'
        }
    }
}
