#!/bin/bash

ENV=$1

if [ -z "$ENV" ]; then
	ENV="dev"
fi

if [ -z "$BUILD" ]; then
	BUILD="latest"
fi

image="${ENV}-repo"

docker build -t "deepikaarjunan/${image}:${BUILD}" .
