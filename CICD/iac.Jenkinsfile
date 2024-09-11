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
        stage('Init Terraform') {
            steps {
                script {
                    dir('eks') {
                        sh 'terraform init'
                    }
                }
            }
        }
        stage('Plan Terraform') {
            steps {
                script {
                    dir('eks') {
                        sh 'terraform plan -out=plan.out'
                    }
                }
                script {
                    def userInput = input(
                        id: 'userInput', message: 'Choose an action', parameters: [
                            choice(name: 'ACTION', choices: ['Apply', 'Destroy'], description: 'Choose whether to apply or destroy the infrastructure')
                        ]
                    )
                    env.ACTION = userInput
                }
            }
        }
        stage('Apply or Destroy Terraform') {
            steps {
                script {
                    dir('eks') {
                        if (env.ACTION == 'Apply') {
                            sh 'terraform apply -auto-approve plan.out'
                        } else if (env.ACTION == 'Destroy') {
                            sh 'terraform destroy -auto-approve'
                        }
                    }
                }
            }
        }
    }
}
