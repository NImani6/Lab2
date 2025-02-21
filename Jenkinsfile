pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/NImani6/Lab2'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Deploy') {
            steps {
                echo 'Deploying application...'
            }
        }
    }
}
