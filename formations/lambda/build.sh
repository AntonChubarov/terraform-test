#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <lambda_name>"
    exit 1
fi

CGO_ENABLED=0 go build -o bootstrap main.go

LAMBDA_NAME=$1

CGO_ENABLED=0 go build -o bootstrap main.go
zip "$LAMBDA_NAME.zip" bootstrap

rm bootstrap
