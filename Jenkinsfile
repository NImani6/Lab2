pipeline {
    agent any

    environment {
        DOCKER_HUB_USER = 'nimani3'
        DOCKER_IMAGE = 'lab2'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/NImani6/Lab2.git'
            }
        }

        stage('Build Maven Project') {
            steps {
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Docker Login') {
            steps {
                withCredentials([string(credentialsId: 'dckr_pat_KHrAiJY8cZIQnueDIk87Ww3ircA', variable: 'DOCKER_HUB_PASS')]) {
                    sh 'echo $DOCKER_HUB_PASS | docker login -u $DOCKER_HUB_USER --password-stdin'
                }
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t $DOCKER_HUB_USER/$DOCKER_IMAGE .'
            }
        }

        stage('Docker Push') {
            steps {
                sh 'docker push $DOCKER_HUB_USER/$DOCKER_IMAGE'
            }
        }
    }
}
