#!/bin/bash

echo "########### Starting ###########"

hostname=http://localhost:4566

echo "########### Creating Secret Manager ###########"

aws secretsmanager create-secret --name app-ms-person/secreats --endpoint-url $hostname  --description "Segredo para efetuar um teste com LocalStack" --secret-string '{"PERSON_SCREAT":"Inical value"}' --profile localstack --region sa-east-1

echo "########### Get info resource Secret Manager ###########"

aws secretsmanager get-secret-value --secret-id app-ms-person/secreats --endpoint-url $hostname --profile localstack --region sa-east-1
