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
    stage ("Push") {
      steps{
        sh "sudo docker push docker.io/priyadocnew/project1:$BUILD_NUMBER"
      }
    }
           }
           }
