#!/usr/bin/env bash

cd ../ops/terraform/$1
terraform init -no-color -backend-config="key=nodejs_test_app/$1"
terraform apply -input=false -auto-approve -var-file=$2 