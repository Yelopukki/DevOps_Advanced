pipeline {
    agent {
        docker {
            image 'python:3.11'
        }
    }

    stages {
        stage('Test') {
            steps {
                sh 'pip install -r requirements.txt'
                sh 'pytest'
            }
        }
    }
}
