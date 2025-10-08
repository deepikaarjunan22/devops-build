#!/bin/bash

ENV=$1

if [ -z "$ENV" ]; then
	ENV="dev"
fi

CONTAINER_NAME="${ENV}-app"

IMAGE="deepikaarjunan/${ENV}-repo:${BUILD_NUMBER}"

docker rm -f "${CONTAINER_NAME}" || true

docker run -d -p 80:80 --name "${CONTAINER_NAME}" "${IMAGE}"
