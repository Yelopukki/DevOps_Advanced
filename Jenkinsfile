pipeline {
    agent any

    stages {
        stage('Test') {
            steps {
                sh 'echo "Run tests"'
            }
        }
        stage('Docker Test') {
            steps {
                sh 'docker ps'
            }
        }
        stage('Build Image') {
            steps {
                sh 'docker build -t my-app-jenkins:${BUILD_NUMBER} .'
            }
        }
        stage('Push Image') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub-creds',
                    usernameVariable: 'USER',
                    passwordVariable: 'PASS'
                )]) {
                    sh '''
                    echo $PASS | docker login -u $USER --password-stdin
                    docker push my-app-jenkins:${BUILD_NUMBER}
                    '''
                }
            }
        }
    }
}
