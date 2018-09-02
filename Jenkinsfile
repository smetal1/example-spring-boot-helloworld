#!groovy
node {
  currentBuild.result = "SUCCESS"
  try {
    stage ('check-out') {
     git credentialsId: 'b8b10002-47b7-43c6-b7bb-7515d01993eb', url: 'https://github.com/smetal1/example-spring-boot-helloworld.git' 
    }
    stage ('blue-green deployment'){
      sh 'chmod +x deployment.sh'
     sh './deployment.sh' 
    }
      
      
  }
  catch(err){
  currentBuild.result = "FAILURE"
  throw err
  }

}
