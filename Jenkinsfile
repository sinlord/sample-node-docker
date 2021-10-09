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
                 echo 'Building..Feature branch'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..Feature branch'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....Feature branch'
            }
        }
    }
}
