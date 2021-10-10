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
                   script {
                        try {
                         sh 'npm install'
                         echo 'Building..Master Branch'
                         } 
                         catch (err) {
                             error 'Build error'
                         }  
                    }   
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..Master branch'
            }
        }
        stage('Deploy - Staging') {
            steps {
                echo 'Deploying on Staging'
                echo 'Running smoke test on Staging'
            }
       }
       stage('Sanity check') {
            steps {
                input "Does the staging build look ok for deployment to production?"
            }
        }
       stage('Deploy - Production') {
            steps {
                echo 'Deploying on Production'
                echo 'Running smoke test on Production'
            }
        }
    }
}
