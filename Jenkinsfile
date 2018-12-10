pipeline{
    agent any

    tools{
        maven 'maven'
        jdk 'java 8'
    }
    stages{
        //This is for Validating the maven project
        stage('Validating'){
            steps{
                step{
                    sh mvn clean validate
                }
            }

        }
        //This is for Compiling the maven project
        stage('Compiling'){
            steps{
                step{
                    sh mvn clean compile
                }
            }
        }
        //This is for Testing the maven project
        stage('Testing'){
            steps{
                step{
                    sh mvn clean test
                }
            }
        }
        //This is for packaging the maven project
        stage('packaging'){
            steps{
                step{
                    sh mvn clean package
                }
            }
        }
        
    }
    }
}