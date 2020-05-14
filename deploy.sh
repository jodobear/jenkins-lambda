#!/bin/bash

set -e
# rm -f go-lambda.zip && zip -rq go-lambda .
aws lambda create-function --function-name go-lambda --zip-file fileb://go-lambda.zip
