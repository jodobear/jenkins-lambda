#!/bin/bash

set -e
rm -f go-lambda.zip && zip -rq archive .
aws lambda update-function-code --function-name go-lambda --sip-file
fileb://archive.zip
