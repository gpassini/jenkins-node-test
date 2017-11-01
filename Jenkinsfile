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
            }
        }
        stage('Deploy') {
            steps {
                sh './src/jenkins/scripts/deploy.sh'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh './src/jenkins/scripts/kill.sh'
            }
        }
    }
}
