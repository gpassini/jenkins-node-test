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
              sh 'echo $PHANTOMJS_BIN'
              sh 'export PHANTOMJS_BIN=/usr/local/lib/node_modules/phantomjs-prebuilt/lib/phantom/bin/phantomjs'
              sh 'npm run test -- --single-run --no-progress'
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
