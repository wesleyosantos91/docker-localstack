#!/bin/bash

echo "########### Starting ###########"

hostname=http://localhost:4566

echo "########### Creating SQS ###########"

aws sqs create-queue --endpoint-url $hostname --queue-name local_queue_person --profile localstack --region sa-east-1
aws sqs create-queue --endpoint-url $hostname --queue-name local_queue_person_1 --profile localstack --region sa-east-1

echo "########### Listing SQS ###########"

aws sqs list-queues --endpoint-url $hostname --profile localstack --region sa-east-1
