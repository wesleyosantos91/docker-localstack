#!/bin/bash

echo "########### Execute Scripts DynamoDB ###########"

for script_name in /configs/dynamodb/*.sh; do
    bash $script_name
done

echo "########### Finish Execute Scripts DynamoDB ###########"
