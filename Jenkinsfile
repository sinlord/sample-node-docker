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
                 echo 'Building..'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
