#!/bin/bash

echo "########### Starting ###########"

hostname=http://localhost:4566

echo "########### Deploy the stack CloudFormation ###########"

cd /configs/cloudformation/resources

for file in `ls | sort -V`
do
    echo $file
    if [[ -f $file ]]; then
        aws cloudformation deploy --stack-name ${file%.*} --template-file $file --endpoint-url $hostname --profile localstack --region sa-east-1
    fi
done

echo "########### Validation creates resources ###########"

aws s3api list-buckets --endpoint-url $hostname --profile localstack --region sa-east-1