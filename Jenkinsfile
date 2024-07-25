pipeline {
    agent any

    stages {
        stage('Test') {
              agent {
                   docker {
                     image 'mcr.microsoft.com/devcontainers/anaconda'
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