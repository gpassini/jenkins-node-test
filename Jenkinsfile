stage('Build') {
    node('docker') {
        checkout scm
        docker.image('node:6-alpine').inside {
            sh 'npm install'
        }
    }
}
