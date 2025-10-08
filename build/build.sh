#!/bin/bash

ENV=$1

if [ -z "$ENV" ]; then
	ENV="dev"
fi

image="${ENV}-repo"

docker build -t "deepikaarjunan/${image}:${BUILD_NUMBER}" .
