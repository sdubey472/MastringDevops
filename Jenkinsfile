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
                git([url: 'https://github.com/sdubey472/MastringDevops.git', branch: 'main'])
            }
        }
        
        stage("Build") {
            steps {
                echo "Hello Jenkins"
                //echo $BUILD_ID
                
                
                sh 'docker image build -t $JOB_NAME:v1.$BUILD_ID .'
                sh 'docker image tag $JOB_NAME:v1.$BUILD_ID sdubey/$JOB_NAME:v1.$BUILD_ID'
                sh 'docker image tag $JOB_NAME:v1.$BUILD_ID sdubey/$JOB_NAME:latest'
                sh 'docker image ls '
                
            }
        }
        
        stage("Push") {
            steps {
                    echo "Hello Jenkins"

//                echo $JOB_NAME

                withCredentials([string(credentialsId: 'dockerhubpassword', variable: 'dockerhubpassword')]) {
                    // some block
                    sh 'docker login -u sd171991 -p ${dockerhubpassword}'
                    sh 'docker image push sdubey/$JOB_NAME:v1.$BUILD_ID'
                    sh 'docker image push sdubey/$JOB_NAME:latest'
                    sh 'docker image rmi $JOB_NAME:v1.$BUILD_ID sdubey/$JOB_NAME:v1.$BUILD_ID sdubey/$JOB_NAME:latest'
                }
            }
        }
        
        stage("Deployment") {
            steps {
                                    echo "Hello Jenkins"

                //echo $JOB_NAME
                // sshagent(['hostpassword']) {
                // some block           
                // sh "ssh -o StricHostKeyChecking=no ec2-user@172.31.42.54  ${env.dockerRun}"

                // }
        }
        }
    }
}
