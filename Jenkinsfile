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
                  script {
                        try {
                          echo 'Testing..Master Branch'
                         } 
                         catch (err) {
                             error 'Build error'
                         }  
                    }
             }
        }
        stage('Deploy - Staging Environment') {
            steps {
                  script {
                        try {
                          echo 'Deploying on Staging'
                          echo 'Running smoke test on Staging'
                         } 
                         catch (err) {
                             error 'Build error'
                         }  
                    }

            }
       }
       stage('Sanity check') {
            steps {
                input "Does the staging build look ok for deployment to production?"
            }
        }
       stage('Deploy - Production Environment') {
            steps {
                script {
                        try {
                           echo 'Deploying on Production'
                           echo 'Running smoke test on Production'
                         } 
                         catch (err) {
                             error 'Build error'
                         }  
                    }
            }
        }
    }
}
