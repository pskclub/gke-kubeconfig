#!/bin/bash
version=$1

if [ "$version" = "" ]; then
    echo -e "Must specify image version"
    exit 1
fi

docker build -t pskclub/gke-kubeconfig:$version .
docker push pskclub/gke-kubeconfig:$version
