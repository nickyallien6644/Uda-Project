#! /bin/bash

# aws eks update-kubeconfig --region us-east-1 --name capstone-v1
echo ":::: START DEPLOYMENT ::::"
kubectl create deployment uda-captone --image=huavinh1901/uda-captone:v1 --replicas=4 && \
kubectl expose deployment/uda-captone --type="LoadBalancer" --port 80
echo ":::: DEPLOYMENT ::::"
kubectl get deployments -o wide
echo ":::: SERVICES ::::"
kubectl get services -o wide
echo ":::: PODS ::::"
kubectl get pods -o wide
