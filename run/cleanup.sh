#! /bin/bash

echo ":::: START CLEANUP ::::"
DEPLOYMENT_NAME=uda-captone
echo ":::: DELETING SERVICE ${DEPLOYMENT_NAME} ::::"
kubectl delete services ${DEPLOYMENT_NAME}

echo ":::: DELETING DEPLOYMENT ${DEPLOYMENT_NAME} ::::"
kubectl delete deployments ${DEPLOYMENT_NAME}

echo ":::: DEPLOYMENT ::::"
kubectl get deployments -o wide
echo ":::: SERVICES ::::"
kubectl get services -o wide
echo ":::: PODS ::::"
kubectl get pods -o wide