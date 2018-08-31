#!groovy
node {
  currentBuild.result = "SUCCESS"
  try {
      stage('**********REMOVE PREVIOUS BUILD**********'){
        sh 'oc delete all --selector app=test-app'
      }
      stage('**********BUILD AND PUBLISH ON OPENSHIFT**********'){
        sh 'pwd'
        sh 'ls'
        sh 'oc new-app . --strategy=docker --name=test-app'
      }
      
      stage('********** EXPOSE SERVICES ON OPENSHIFT**********'){
        sh 'oc expose service test-app'
      }
  }
  catch(err){
  currentBuild.result = "FAILURE"
  throw err
  }

}
