pipeline{
    agent none
    environment {
        branch = 'master'
    }
    stages {
        stage('SCM Checkout'){
            agent any
            steps {
                git (
                    url:'https://github.com/Sliuza/flask-python3-jenkins.git',
                    branch: "${branch}"
                )
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

    }

}