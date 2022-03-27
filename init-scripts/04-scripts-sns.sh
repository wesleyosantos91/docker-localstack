#!/bin/bash

echo "########### Execute Scripts SNS ###########"

for script_name in /configs/sns/*.sh; do
    bash $script_name
done

echo "########### Finish Execute Scripts SNS ###########"
