pipeline {
    agent any

    environment {
        DOCKERHUB_CREDENTIALS = 'internals'
        IMAGE_NAME = 'shreyas1234567/internals'
    }

    stages {

        stage('Build Java Application') {
            steps {
                bat 'javac Helloworld.java'
            }
        }

        stage('Run Java Program') {
            steps {
                bat 'java Helloworld'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t %IMAGE_NAME%:latest .'
            }
        }

        stage('Login to DockerHub') {
            steps {
                withCredentials([usernamePassword(
                credentialsId: 'internals',//give your credentials mentioned above
                usernameVariable: 'USER',
                passwordVariable: 'PASS')]) {

                    bat 'echo %PASS%| docker login -u %USER% --password-stdin'
                }
            }
        }

        stage('Push Docker Image') {
            steps {
                bat 'docker push %IMAGE_NAME%:latest'
            }
        }
    }
}
