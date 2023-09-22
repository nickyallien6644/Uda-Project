#! /bin/bash

REGION="us-east-1"
CLUSTER=capstone-v1

echo ":::: START CREATE CLUSTER ::::"
cluster_exists() {
    kubectl config get-contexts | awk '{print $3}' | grep "capstone"
}

if cluster_exists; then
    echo "Cluster '${CLUSTER}.${REGION}$' already exists!"
else
    echo "Creating cluster..."
    eksctl create cluster --name "$CLUSTER" --region="$REGION" --nodes-min=2 --nodes-max=3
fi