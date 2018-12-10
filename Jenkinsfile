pipeline{
    agent any

    stages{
        //This is for Validating the maven project
        stage('Validating'){
            steps{
                step{
                  //  sh mvn clean validate
                  echo "Validating code Here"
                }
            }

        }
        //This is for Compiling the maven project
        stage('Compiling'){
            steps{
                step{
                  //  sh mvn clean compile
                  echo "Compiling code Here"
                }
            }
        }
        //This is for Testing the maven project
        stage('Testing'){
            steps{
                step{
                 //   sh mvn clean test
                 echo "Testing Code Here"
                }
            }
        }
        //This is for packaging the maven project
        stage('packaging'){
            steps{
                step{
                  //  sh mvn clean package
                  echo "packaging code Here"
                }
            }
        }
        
    }
    }

