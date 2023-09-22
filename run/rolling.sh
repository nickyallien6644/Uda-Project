#! /bin/bash

DEPLOYMENT_NAME=uda-captone
NEW_IMAGE_NAME=registry.hub.docker.com/huavinh1901/uda-captone:latest

echo ":::: ROLLING PROJECT ::::"
kubectl get deployments -o wide
kubectl set image deployments/${DEPLOYMENT_NAME} ${DEPLOYMENT_NAME}=${NEW_IMAGE_NAME}
kubectl get deployments -o wide
kubectl describe pods | grep -i image
kubectl get pods -o wide