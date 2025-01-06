#!/bin/bash

# Load environment variables from .env file
set -o allexport
source .env
set +o allexport

# Define the template file and the output file
TEMPLATE_FILE="erpc.yaml.template"
OUTPUT_FILE="erpc.yaml"

rm $OUTPUT_FILE

# Create the output file from the template
cp $TEMPLATE_FILE $OUTPUT_FILE

# Replace placeholders in the output file with environment variables
sed -i '' "s/{{ALCHEMY_API_KEY}}/$ALCHEMY_API_KEY/g" $OUTPUT_FILE
sed -i '' "s/{{BLASTAPI_API_KEY}}/$BLASTAPI_API_KEY/g" $OUTPUT_FILE
sed -i '' "s/{{DRPC_API_KEY}}/$DRPC_API_KEY/g" $OUTPUT_FILE
sed -i '' "s/{{INFURA_API_KEY}}/$INFURA_API_KEY/g" $OUTPUT_FILE
sed -i '' "s/{{THIRDWEB_API_KEY}}/$THIRDWEB_API_KEY/g" $OUTPUT_FILE

echo "Environment variables have been filled into $OUTPUT_FILE"