#!/bin/bash

ENV=$1

if [ -z "$ENV" ]; then
	ENV="dev"
fi

export ENV
export BUILD_NUMBER

docker compose down || true

docker compose up -d
