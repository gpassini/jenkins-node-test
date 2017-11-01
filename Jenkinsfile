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
                sh 'npm run start &'
                sh 'sleep 1'
                sh 'echo $! > .pidfile'
                input message: 'Finished using the web site? (Click "Proceed" to continue)'
                sh 'kill \$(cat .pidfile)'
            }
        }
    }
}
