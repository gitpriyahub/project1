pipeline {
  agent any
  stages { 
    stage ("Build") {
      steps{
        sh' sudo docker build -t project:$Buildnumber .'
      }
    }
    stage ("Deploy") {
           steps{
             sh' sudo docker run -itd -p 3000:3000 --name priya project:$Buildnumber'
           }
           }
           }
           }
