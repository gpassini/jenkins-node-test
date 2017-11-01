pipeline {
    agent { docker 'node:6-alpine' }
    stages {
        stage('Build') {
            steps {
                sh 'echo whoami'
                sh './src/jenkins/scripts/build.sh'
            }
        }
    }
}
