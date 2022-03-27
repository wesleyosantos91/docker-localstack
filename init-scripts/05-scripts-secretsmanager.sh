#!/bin/bash

echo "########### Execute Scripts Secret Manager ###########"

for script_name in /configs/secretsmanager/*.sh; do
    bash $script_name
done

echo "########### Finish Execute Scripts Secret Manager ###########"
