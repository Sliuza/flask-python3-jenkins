pipeline{
    agent none
    environment {
        branch = 'master'
    }
    stages {
        stage('Clone repository'){
            agent any
            steps {
               checkout scm
            }
            post {
                success {
                    sh 'echo "Checkout was done sucessful"'
                }
                failure {
                    sh 'echo "Fail to checkout"'
                }
            }
        }

        stage('Build image'){
            agent any
            steps{
                app = docker.build("sliuzas/flask-user")
            }
        }

        stage('Push image') {
            docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
            }
        }
    }

    }

}