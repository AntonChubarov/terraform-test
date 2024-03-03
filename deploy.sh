#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <directory_path> [environment_name]"
  exit 1
fi

environment=${2:-"dev"}

cd "$1" || exit 1

if [ ! -f "main.tf" ]; then
  echo "Error: main.tf not found in the specified directory."
  exit 1
fi

if [ ! -d ".terraform" ]; then
  echo "Initializing Terraform..."
  terraform init
fi

terraform apply -auto-approve -var="environment=${environment}"

cd - || exit 1
