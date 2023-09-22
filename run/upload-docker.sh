#! /bin/bash

echo ":::: UPLOADING DOCKER ::::"
docker login -u huavinh1901
docker image tag uda-captone huavinh1901/uda-captone:v1
docker push huavinh1901/uda-captone:v1