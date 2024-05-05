#!/bin/bash

for file in *; do
    # Add --from-file and the filename to the arguments array
    arguments+=("--from-file=${file}")
done

# Create the secret using oc command with all files
oc create secret generic papermc-configs "${arguments[@]}"
