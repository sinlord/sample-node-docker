pipeline {
    
    agent {
        docker {
                 image 'node:16-alpine3.11'
                 args '-p 3000:3000'
                }
        }
    stages {
        
            stage('Initialize'){
                def dockerHome = tool 'naughty_tu'
                env.PATH = "${dockerHome}/bin:${env.PATH}"
            }
        
        stage('Build') {
            steps {
                 sh 'npm install'
                 sh 'npm install -g gulp'                 
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
