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
    stage('Run Tests')
    {
        parallel {
            stage('Prallel 1')
            {
                agent any
                step {
                    echo "Hello 1"
                }
            }
            stage('Prallel 2')
            {
                agent any
                step {
                    echo "Hello 2"
                }
            }

        }
    }


    }
}