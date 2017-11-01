pipeline {
    agent { docker 'node:6-alpine' }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
    }
}
