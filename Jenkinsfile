pipeline {
    agent any

    parameters {
        string(name: 'environment', defaultValue: 'default', description: 'Workspace/environment file to use for deployment')
        string(name: 'version', defaultValue: '', description: 'Version variable to pass to Terraform')
        booleanParam(name: 'autoApprove', defaultValue: false, description: 'Automatically run apply after generating plan?')
    }
    
    environment {
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
        TF_IN_AUTOMATION      = '1'
    }

    stages {
        stage('cloning Git') {
         git "https://git...."
      }

       stage('Install Dependencies') {
         steps {
            sh "npm install"
         }
      }

       stage('test') {
            sh 'node test'
        }

       stage('Deploy Staging') {
            sh 'make deploy-lambda-staging'
            sh 'make deploy-redis-staging'
        }
       stage('Deploy Dev') {
            sh 'make deploy-lambda-dev'
            sh 'make deploy-redis-dev'
        }
       stage('Deploy Production dry-run') {
           failFast true
            steps {
                sh "make deploy-lambda-production-dry-run"
                sh "make deploy-redis-production-dry-run"
            }
        }
        stage('Deploy Production') {
           failFast true
            steps {
                sh "make deploy-lambda-production"
                sh "make deploy-redis-production"
            }
        }
    }
}