#!/bin/bash

echo "########### Starting ###########"

hostname=http://localhost:4566

echo "########### Creating Bucket S3 ###########"

aws s3api create-bucket --bucket person-bucket --endpoint $hostname --profile localstack  --region sa-east-1

echo "########### Get info resource Bucket S3 ###########"

aws s3api list-buckets --endpoint $hostname --profile localstack  --region sa-east-1

