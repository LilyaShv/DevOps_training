pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "lilyashved/devops_training"
        IMAGE_TAG = "latest"
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/LilyaShv/DevOps_training.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t $DOCKER_IMAGE:$IMAGE_TAG -f docker/Dockerfile .'
            }
        }

        stage('Test') {
            steps {
                sh 'echo "Running basic tests..."'
                sh 'python --version'
            }
        }

        stage('Push Image') {
            steps {
                sh 'docker push $DOCKER_IMAGE:$IMAGE_TAG'
            }
        }

        stage('Deploy with Helm') {
            steps {
                sh '''
                helm upgrade --install quakewatch ./helm/my-app \
                --set image.repository=$DOCKER_IMAGE \
                --set image.tag=$IMAGE_TAG
                '''
            }
        }
    }
}
