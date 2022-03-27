#!/bin/bash

echo "########### Execute Scripts Bucket S3 ###########"

for script_name in /configs/s3/*.sh; do
    bash $script_name
done

echo "########### Finish Execute Scripts Bucket S3 ###########"
