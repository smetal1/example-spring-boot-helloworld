oc new-app openshift/deployment-example
oc expose svc/deployment-example
oc scale dc/deployment-example --replicas=3

