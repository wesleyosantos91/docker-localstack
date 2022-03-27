#!/bin/bash

echo "########### Starting ###########"

hostname=http://localhost:4566

echoerr() { echo "$@" 1>&2; }

create_table() {

    file_name=$@
    echo "Creating table with file: [$file_name]"
    result=$(aws dynamodb create-table --cli-input-json file://$file_name --profile localstack --region sa-east-1 --endpoint-url $hostname 2>&1)
    error=$(echo ${result} | grep -i 'error')
    
    if [ -n "$error" ]
    then
        echoerr "########### Error Log: [$error]! ###########"
    else 
        echo "########### Table created! ###########"
    fi            
}

batch_write_items() {
    file_name=$@
    echo "Batch write items with file: [$file_name]"
    result=$(aws dynamodb batch-write-item --request-items file://$file_name --profile localstack --region sa-east-1 --endpoint-url $hostname 2>&1)
    echo "Items inserted! Log: $result"
}

cd /configs/dynamodb/resources

for file in `ls | sort -V`
do
    echo $file
    if [[ -f $file ]]; then
        command=$(echo $file | cut -d'-' -f2)
        
        if [ $command = 'ct' ] 
        then
            create_table $file
        fi

        if [ $command = 'bwi' ] 
        then
            batch_write_items $file
        fi
    fi
done

echo "########### Listing Tables ###########"

aws dynamodb list-tables --endpoint-url $hostname --profile localstack --region sa-east-1