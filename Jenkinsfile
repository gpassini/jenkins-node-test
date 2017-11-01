pipeline {
    agent { docker 'node:6-alpine' }
    stages {
        stage('build') {
            steps {
                sh '.src/jenkins-scripts/build.sh'
            }
        }
    }
}
