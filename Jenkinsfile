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
    }
}