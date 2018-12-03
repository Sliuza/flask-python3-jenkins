pipeline{
    stage('SCM Checkout'){
        git 'https://github.com/Sliuza/flask-python3-jenkins.git'
    }

    stage('Build Docker'){
        sh ""
    }

}