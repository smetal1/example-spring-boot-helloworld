oc patch route/bluegreen-test-app -p '{"spec":{"to":{"name":"test-app-blue"}}}'
sleep 60s
oc delete all --selector app=test-app-green
oc new-app . --strategy=docker --name=test-app-green
sleep 30s
oc expose svc/test-app-green --name=bluegreen-test-app
sleep  30s
oc delete all --selector app=test-app-blue
oc new-app . --strategy=docker --name=test-app-blue
