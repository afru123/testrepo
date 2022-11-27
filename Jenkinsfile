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
                script{
                withSonarqubeEnv(CredentialsId: "sonar-api") {
                sh 'mvn clean package sonar:sonar'
                }
                }
            } 
        }
        stage('Quality Gate status') {
            steps{
                script{
                    waitForQualityGate abortPipeline: "false", CredentialsId: "sonar-api" 
                }
            }
        } 
        stage('upload war file to nexus'){
            steps{
                script{
                    def readPomVersion = readMavenPom file: 'pom.xml'
                    def nexusRepo = readMavenPom.version.endsWith('SNAPSHOT') ? "demoapp-snapshot" : "demoapp-release"
                    nuxusArtifactUploader.....huge command generated in jenkins pipeline syntax with nexus artifact uploader, we can see the alignment in the screen shot
                }
            }
        }              
    }
}