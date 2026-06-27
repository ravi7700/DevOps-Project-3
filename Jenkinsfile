pipeline {
    agent any
    
    environment {
        
        DOCKER_CREDS = credentials('docker-hub-credentials')
        
        DOCKER_USER = "ravikumarr10839"
    }
    
    stages {
        stage('Checkout Code') {
            steps {
                checkout scm
            }
        }
        
        stage('Build Image') {
            steps {
                sh 'chmod +x build.sh deploy.sh'
                sh './build.sh'
            }
        }
        
        stage('Push to Hub') {
            steps {
                
                sh "echo \$DOCKER_CREDS_PSW | docker login -u \$DOCKER_CREDS_USR --password-stdin"
                
                script {
                    if (env.BRANCH_NAME == 'dev') {
                        echo "Tagging and pushing to DEV repository (Auto-created as Public)..."
                        sh "docker tag react-app-image:latest ${DOCKER_USER}/dev:latest"
                        sh "docker push ${DOCKER_USER}/dev:latest"
                        
                    } else if (env.BRANCH_NAME == 'main') {
                        echo "100% AUTOMATION: Forcing PROD repository to be PRIVATE via API..."
                        
                        
                        sh '''
                            
                            TOKEN=$(curl -s -H "Content-Type: application/json" -X POST -d '{"username": "'$DOCKER_CREDS_USR'", "password": "'$DOCKER_CREDS_PSW'"}' https://hub.docker.com/v2/users/login/ | grep -o '"token":"[^"]*' | cut -d'"' -f4)
                            
                            
                            curl -s -o /dev/null -w "API Response Code: %{http_code}\\n" -H "Authorization: JWT ${TOKEN}" -H "Content-Type: application/json" -X POST -d '{"namespace":"'$DOCKER_USER'", "name": "prod", "is_private": true}' https://hub.docker.com/v2/repositories/
                        '''
                        
                        echo "Pushing image to the private PROD repository..."
                        sh "docker tag react-app-image:latest ${DOCKER_USER}/prod:latest"
                        sh "docker push ${DOCKER_USER}/prod:latest"
                    }
                }
            }
        }
        
        stage('Deploy to EC2') {
            steps {
                sh './deploy.sh'
            }
        }
    }
}
