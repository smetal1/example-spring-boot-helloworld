#!groovy
node {
  currentBuild.result = "SUCCESS"
  try {
      stage('**********REMOVE PREVIOUS BUILD**********'){
        sh 'oc delete all --selector app=test-app'
      }
      
      }
      
      stage('********** EXPOSE SERVICES ON OPENSHIFT**********'){
     
      }
  }
  catch(err){
  currentBuild.result = "FAILURE"
  throw err
  }

}
