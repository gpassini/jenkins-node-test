pipeline {
    agent {
        docker {
            image 'node:6-alpine'
            args '-p 4200:4200'
        }
    }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
              sh 'npm run lint'
              sh 'npm install -g phantomjs-prebuilt'
              sh 'npm run test'
            }
        }
        stage('Deploy') {
            steps {
                sh './jenkins/scripts/deploy.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh './jenkins/scripts/kill.sh'
            }
        }
    }
}
