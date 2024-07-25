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
              ls -la
              python --version
              conda --version
              mkdir -p target
              conda build . --output-folder target
              ls -la
              ls target
              """
            }
        }
    }
}