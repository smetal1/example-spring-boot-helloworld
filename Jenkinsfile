#!groovy
node {
  currentBuild.result = "SUCCESS"
  try {
      stage('**********REMOVE PREVIOUS BUILD**********'){
        sh 'oc delete all --selector app=test-app'
      }
      
      
      
  }
  catch(err){
  currentBuild.result = "FAILURE"
  throw err
  }

}
