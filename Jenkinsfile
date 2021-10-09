pipeline {
    
    agent {
        docker {
                 image 'node:16-alpine3.11'
                 args '-p 3000:3000'
                }
        }
    stages {
        
        stage('Build') {
            steps {
                 sh 'npm install'
                 echo 'Building..Master Branch'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..Master branch'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....Master Branch'
            }
        }
    }
}
