#!/bin/bash

echo "########### Execute Scripts CloudFormation  ###########"

for script_name in /configs/cloudformation/*.sh; do
    bash $script_name
done

echo "########### Finish Execute Scripts CloudFormation  ###########"
