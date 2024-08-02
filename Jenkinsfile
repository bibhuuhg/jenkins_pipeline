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
                steps {
                    echo "Hello 1"
                }
            }
            stage('Prallel 2')
            {
                agent any
                steps {
                    echo "Hello 3"
                }
            }

        }
    }
    stage('approval')
    {
        agent any 
        steps{
            timeout(2) {
               input 'deployment to prod '
            }   
            
        }
        
    }
    stage('prod-deployment')
    {
        agent any 
        steps{
            echo "Deployment Completed..."
        }
        
    }

    }
}