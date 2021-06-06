#!/usr/bin/env bash

cd ../ops/terraform/$1
terraform init -no-color -backend-config="key=nodejs_test_app/$3"
terraform plan -input=false -var-file=$2 

