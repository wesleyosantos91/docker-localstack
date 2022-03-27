#!/bin/bash

echo "########### Execute Scripts SQS ###########"

for script_name in /configs/sqs/*.sh; do
    bash $script_name
done

echo "########### Finish Execute Scripts SQS ###########"
