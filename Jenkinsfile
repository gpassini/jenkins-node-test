pipeline {
    agent { docker 'node:6-alpine' }
    stages {
        stage('build') {
            steps {
                sh 'npm install --ignore-scripts'
            }
        }
    }
}
