#! /bin/bash

echo ":::: START ROLLBACK ::::"
kubectl get deployments -o wide
kubectl rollout undo deployment uda-captone
kubectl describe pods | grep -i image
kubectl get pods -o wide
kubectl get deployments -o wide