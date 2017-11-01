pipeline {
    agent { docker 'node:6-alpine' }
    stages {
        stage('Build') {
            steps {
                sh 'npm install'
            }
        }
        stage('Test') {
            steps {
              sh 'npm run lint'
              sh 'export CHROME_BIN=chromium-browser'
              sh 'xvfb-run -a npm run test -- --single-run --no-progress --browser=ChromeNoSandbox'
            }
        }
    }
}
