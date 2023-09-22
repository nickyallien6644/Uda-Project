#! /bin/bash

echo ":::: START FORWARD ::::"
kubectl port-forward service/uda-captone 80:80