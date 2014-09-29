#!/bin/bash

BINARY_NAME="tiny-go-fileserver"

docker build -t nathanleclaire/${BINARY_NAME} . 
docker run nathanleclaire/${BINARY_NAME}

LAST_CONTAINER=$(docker ps -lq)

sudo docker cp ${LAST_CONTAINER}:/go/bin/${BINARY_NAME} bin
docker rm ${LAST_CONTAINER}
cp bin/${BINARY_NAME} sfserver

docker build -t nathanleclaire/sfserver sfserver
