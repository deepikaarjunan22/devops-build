#!/bin/bash

ENV=$1
BUILD=$2

if [ -z "$ENV" ]; then
	ENV="dev"
fi

if [ -z "$BUILD" ]; then
	BUILD="latest"
fi

export ENV
export BUILD_NUMBER

docker-compose down || true

docker-compose up -d
