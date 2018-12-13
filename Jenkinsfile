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
    
       
        stage('Deploying')
        {
            steps
            {
                script
                {
                    //Checking the already running container exists or not
                    if ( $(docker inspect -f '{{.State.Running}}' spring-boot-websocket) = "true" ); then 
                    echo "The Container is already running " 
                    echo "Now Stopping the container to Create the latest" 
                    sudo docker container stop spring-boot-websocket
                    echo "Now Removing the container from docker to release resources---"
                    sudo docker container rm -f spring-boot-websocket
                    echo "----- Now Reinstalling the container ----- "
                    sudo docker run -d --name spring-boot-websocket -p 7070:8080 spring-boot-app
                    echo "---- Container running and listening at port 7070--------"
                    echo "-----------OPERATION COMPLETE----"; 
                    else echo "No Such Container Running"
                    if ( $(docker inspect -f '{{.State.Exited}}' spring-boot-websocket) = "true" );then
                    echo "------- Found One Exited Container -----------"
                    sudo docker container rm -f spring-boot-websocket;
                    echo "----- Exited container removed------"; 
                    else 
                    echo "Nothing Found"; fi
                    echo "----------------Creating the new Container-------------"
                    sudo docker run -d --name spring-boot-websocket -p 7070:8080 spring-boot-app; fi

                }
            }
        }
    }
    }
// This is sample change made to check branch               
