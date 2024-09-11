pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        region = 'ca-central-1'
    }
    stages {
        stage('Checkout SCM') {
            steps {
                script {
                    checkout scmGit(branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/dhanu0510/eks-cluster-terraform-jenkins.git']])
                }
            }
        }
       stage('Deploy nginx app') {
            steps {
                script {
                    dir('manifest') {
                        sh 'aws eks update-kubeconfig --name eks-cluster --region ca-central-1'
                        sh 'kubectl apply -f deployment.yaml'
                        sh 'kubectl apply -f service.yaml'
                    }
                }
            }
        }
    }
}
