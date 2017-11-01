pipeline {
    agent { docker 'node:6-alpine' }
    stages {
        stage('build') {
            steps {
                sh './jenkins-scripts/build.sh'
            }
        }
    }
}
