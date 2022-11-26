pipeline {
    agent any
    stages {
        stage('Git Checkout') {
            steps{
                git branch: "main", url: "https://github.com/afru123/testrepo.git"
            }
        }
        stage('Git Checkout') {
            steps{
                sh 'mvn test'
            }
        }
        stage('integration testing') {
            steps{
                sh 'mvn verify -DskipgitUnitTests'
            }
        } 
        stage('Maven Build') {
            steps{
                sh 'mvn clean install'
            }
        }
        stage('statis code analysis') {
            steps {
                withSonarqubeEnv(CredentialsId: "Sonar-api") {
                sh 'mvn clean package sonar:sonar'
                }
            }
        }               
    }
}