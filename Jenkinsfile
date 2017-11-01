node('docker') {
    checkout scm
    stage('Build') {
        docker.image('node:6-alpine').inside {
            sh 'npm install'
        }
    }
}
