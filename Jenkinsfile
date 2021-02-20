pipeline {
    agent any
    environment {
        dockerRun = "docker run -p 8000:80 -d --name devOpsGuide  sdubey/devopsguide:latest"
        dockerrm = "docker container rm -f devOpsGuide"
        dockerimagerm = "docker image rmi  sdubey/devopsguide"
    }
        

    stages {
        stage('PUll') {
            steps {
                git 'https://github.com/sdubey472/MastringDevops.git'
            }
        }
        
        stage("Build") {
            steps {
                sh 'docker image build -t $JOB_NAME:v1.$BUILD_ID .'
                sh 'docker image tag $JOB_NAME:v1.$BUILD_ID sdubey/$JOB_NAME:v1.$BUILD_ID'
                sh 'docker image tag $JOB_NAME:v1.$BUILD_ID sdubey/$JOB_NAME:latest'
                
            }
        }
        
        stage("Push") {
            steps {
                withCredentials([string(credentialsId: 'sdubey123!', variable: 'sdubey123!')]) {
    // some block
    sh 'docker login -u sd171991 -p ${mobilehubpassword}'
    sh 'docker image push sdubey/$JOB_NAME:v1.$BUILD_ID'
    sh 'docker image push sdubey/$JOB_NAME:latest'
    sh 'docker image rmi $JOB_NAME:v1.$BUILD_ID sdubey/$JOB_NAME:v1.$BUILD_ID sdubey/$JOB_NAME:latest'
}
            }
        }
        
        stage("Deployment") {
            steps {
             sshagent(['hostpassword']) {
    // some block           
   
                 
                 sh "ssh -o StricHostKeyChecking=no ec2-user@172.31.42.54  ${env.dockerRun}"
    
}
        }
        }
    }
}
