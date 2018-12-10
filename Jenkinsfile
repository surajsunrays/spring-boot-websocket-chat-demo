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
                
                  //  sh mvn clean compile
                  echo "Compiling code Here"
                
            }
        }
        //This is for Testing the maven project
        stage('Testing'){
            steps{
                
                 //   sh mvn clean test
                 echo "Testing Code Here"
                
            }
        }
        //This is for packaging the maven project
        stage('packaging'){
            steps{
                
                  //  sh mvn clean package
                  echo "packaging code Here"
                
            }
        }
        
    }
    }

