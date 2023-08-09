pipeline {
  agent any
  stages { 
    stage ("Build") {
      steps{
        sh "sudo docker build -t project1:$BUILD_NUMBER ."
      }
    }
    stage ("Deploy") {
           steps{
             sh "sudo docker stop priya"
             sh "sudo docker rm priya"
             sh "sudo docker run -itd -p 3000:3000 --name priya project1:$BUILD_NUMBER"
           }
           }
    stage ("Login") {
      steps{
        sh "sudo cat my-password | sudo docker login -u priyadocnew --password-stdin"
      }
    }
    stage ("Push") {
      steps{
        sh "sudo docker tag project1:$BUILD_NUMBER priyadocnew/project1:$BUILD_NUMBER"
        sh "sudo docker push priyadocnew/project1:$BUILD_NUMBER"
      }
    }
           }
           }
