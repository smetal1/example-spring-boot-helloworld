oc patch route/bluegreen-test-app -p '{"spec":{"to":{"name":"test-app-blue"}}}'
sleep 60s
oc delete services app=test-app-green
oc new-app . --strategy=docker --name=test-app-green
sleep 60s
oc patch route/bluegreen-test-app -p '{"spec":{"to":{"name":"test-app-green"}}}'
#oc expose svc/test-app-green --name=bluegreen-test-app
sleep  30s
oc delete services app=test-app-blue
oc new-app . --strategy=docker --name=test-app-blue
