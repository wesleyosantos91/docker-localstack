#!/bin/bash

echo "########### Starting ###########"

hostname=http://localhost:4566

echo "########### Creating SNS ###########"

aws sns create-topic --endpoint-url $hostname --name local_topic_person --profile localstack --region sa-east-1
aws sns create-topic --endpoint-url $hostname --name local_topic_person_1 --profile localstack --region sa-east-1

echo "########### Listing SNS ###########"

aws sns list-topics --endpoint-url $hostname --profile localstack --region sa-east-1
