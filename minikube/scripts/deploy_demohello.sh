#!/bin/bash

kubectl apply -f demo-deployment.yaml && kubectl rollout status deployment/demohello && kubectl apply -f demo-svc.yaml

#kubectl create -f . ###assuming all yaml files are in the same directory.

sleep 3

kubectl get pods -o wide && minikube service list -p multinode-demo
