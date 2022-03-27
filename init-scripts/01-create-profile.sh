#!/bin/bash

echo "########### Starting ##############"

aws configure set aws_access_key_id default_access_key --profile=localstack
aws configure set aws_secret_access_key default_secret_key --profile=localstack
aws configure set region sa-east-1 --profile=localstack

echo "########### Listing profile #######"
aws configure list --profile=localstack
