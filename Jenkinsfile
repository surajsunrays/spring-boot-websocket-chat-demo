pipeline{
    agent any

    stages{
        //This is for Validating the maven project
        stage('Validating'){
            steps{
                echo "Validating code Here"
                sh 'mvn clean validate'
            }

        }
        //This is for Compiling the maven project
        stage('Compiling'){
            steps{
                    echo "Compiling code Here"
                    sh 'mvn clean compile'
                  
                
            }
        }
        //This is for Testing the maven project
        stage('Testing'){
            steps{
                    echo "Testing Code Here"
                    sh 'mvn clean test'
                 
                
            }
        }
        //This is for packaging the maven project
        stage('packaging'){
            steps{
                    echo "packaging code Here"
                    sh 'mvn clean package'
                  
                
            }
        }
        stage('Docker:Image-Build'){
            steps{
                echo "Creating the docker image using Dockerfile"
                //Docker image build and docker commands are here
                //Trying to build the docker image Here
                echo "We are creating the docker Image Here"
                sh 'docker image build --name spring-boot-websocket .'
                //
            }
        }
        stage('Depolying'){
            steps{
                echo "Deploying the app using docker"
                //sh 'docker run -d --name spring-boot-websocket -p 7070:8080 '
            }
        }
        
    }
    }

