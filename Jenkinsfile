#!groovy
node {
  currentBuild.result = "SUCCESS"
  try {
      stage('*** REMOVING GREEN DEPLOYMENT ***'){
        sh 'oc patch route/bluegreen-test-app -p '{"spec":{"to":{"name":"test-app-blue"}}}''
        sh 'oc delete all --selector app=test-app-green'
      }
    stage ('*** UPDATE Green Deployment ***'){
     sh 'oc new-app https://github.com/smetal1/example-spring-boot-helloworld.git --strategy=docker --name=test-app-green'
      sh 'oc expose svc/test-app-green --name=bluegreen-test-app'
    }
    stage ('*** UPDATE Blue Deployment ***'){
     sh 'oc new-app https://github.com/smetal1/example-spring-boot-helloworld.git --strategy=docker --name=test-app-blue'
    }
      
      
  }
  catch(err){
  currentBuild.result = "FAILURE"
  throw err
  }

}
