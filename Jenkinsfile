pipeline {
  agent any
  stages { 
    stage ('Build') {
      steps{
        sh 'sudo docker build -t project:$Build_Number .'
      }
    }
    stage ('Deploy') {
           steps{
             sh 'sudo docker stop priya'
             sh 'sudo docker rm priya'
             sh 'sudo docker run -itd -p 3000:3000 --name priya project:$Build_Number'
           }
           }
           }
           }
