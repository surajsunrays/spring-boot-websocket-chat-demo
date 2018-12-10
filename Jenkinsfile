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
        
    }
    }

