pipeline {
    agent any

    stages {
        stage('Test') {
              agent {
                   docker {
                     image 'condaforge/mambaforge:24.3.0-0'
                     reuseNode true
                 }
                }
         steps {
              sh """
              python --version
              conda --version
              """
            }
        }
    }
}