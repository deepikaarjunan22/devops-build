#!/bin/bash


ENV=$1
BUILD=$2

if [ -z "$ENV" ]; then
    ENV="dev"
fi

if [ -z "$BUILD" ]; then
    BUILD="latest"
fi

REPO="deepikaarjunan/${ENV}-repo"

docker build -t ${REPO}:${BUILD} .
