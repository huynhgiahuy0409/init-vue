pipeline {
  agent any
  environment {
        IMAGE_NAME = 'init-vue-app'
        CONTAINER_NAME = 'init-vue-app-container'
        GIT_REPO = 'https://github.com/huynhgiahuy0409/init-vue.git'
        GIT_BRANCH = 'main'
        TARGET_DIR = '/projects/huy'
        BUILD_PATH = 'E:/Levi/Jenkin/Build'
        GIT_CREDENTIALS = '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'
  }
  stages {
        stage('Clone Repository') {
            steps {
                // Clone the Vue.js project from Git
                dir("${BUILD_PATH}") {
                  git branch: 'main', credentialsId: "${GIT_CREDENTIALS}", url: "${GIT_REPO}"
                }
            }
        }

        stage('Install Dependencies') {
            steps {
                // Install npm packages required for the project
                dir("${BUILD_PATH}") {
                    bat 'npm install'
                }
            }
        }

        stage('Build Project') {
            steps {
                // Run the build command to create the production build
                dir("${BUILD_PATH}") {
                    bat 'npm run build'
                }
            }
        }

        stage('Deploy') {
            steps {
                // Copy the dist folder to the remote server
                dir("${BUILD_PATH}") {
                    bat "scp -r ./dist root@103.37.60.16:/var/www/huy" // Use 'sh' for Linux
                }
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
