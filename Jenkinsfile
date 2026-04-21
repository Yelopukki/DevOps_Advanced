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
    }
}
