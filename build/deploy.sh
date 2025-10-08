#!/bin/bash

ENV=$1

if [ -z "$ENV" ]; then
	ENV="dev"
fi

CONTAINER_NAME="${ENV}-app"

IMAGE="deepikaarjunan/${ENV}-repo:${BUILD_NUMBER}"

docker rm -f "${CONTAINER_NAME}" || true

if [ "$ENV" = "dev" ]; then
	PORT=80
else 
	PORT=8080
fi

docker run -d -p ${PORT}:80 --name "${CONTAINER_NAME}" "${IMAGE}"
