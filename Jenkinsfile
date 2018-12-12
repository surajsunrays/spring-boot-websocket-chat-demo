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
                sh 'docker image build -t spring-boot-websocket-chat-demo .'
                //
            }
        }
    
       
        stage('Deploying-Check Running')
        {
            when
            {
                    sh 'docker inspect -f '{{.State.Running}}' spring-boot-websocket'
            }
            steps{
                echo "Container is already Running......"
            }
        }
        stage('Deploying-Check Exited'){
            when{
                
                    sh 'docker inspect -f '{{.State.Exited}}' spring-boot-websocket'
                }
            steps{
                echo "The container is exited......"
            }
            }
    }
    }
// This is sample change made to check branch               
