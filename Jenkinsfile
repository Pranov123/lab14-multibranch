pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Maven Test') {
            steps {
                bat 'mvn clean test'
            }
        }

        stage('Maven Package') {
            steps {
                bat 'mvn package -DskipTests'
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t lab14-multibranch:latest .'
            }
        }

        stage('Run Docker Container') {
            steps {
                bat 'docker run --rm lab14-multibranch:latest'
            }
        }
    }
}
