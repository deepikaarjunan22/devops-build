#!/bin/bash

docker rm -f dev-app || true

docker run -d -p 80:80 --name dev-app deepikaarjunan/dev-repo:${BUILD_NUMBER}
