pipeline {
    agent { docker 'node:6-alpine' }
    stages {
        stage('Build') {
            steps {
                sh 'npm install --ignore-scripts'
                sh 'curl -o ngrok.zip https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip'
                sh 'unzip ngrok.zip'
                sh 'rm node_modules/ngrok/bin/ngrok'
                sh 'cp ngrok node_modules/ngrok/bin/ngrok'
            }
        }
    }
}
