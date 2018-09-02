oc patch route/bluegreen-test-app -p '{"spec":{"to":{"name":"test-app-blue"}}}'
oc delete all --selector app=test-app-green
oc new-app . --strategy=docker --name=test-app-green
oc expose svc/test-app-green --name=bluegreen-test-app
oc delete all --selector app=test-app-blue
oc new-app . --strategy=docker --name=test-app-blue
