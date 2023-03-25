#!/bin/bash

az upgrade
echo $ARM_CLIENT_ID
echo $ARM_CLIENT_SECRET
echo $ARM_TENANT_ID
echo $AuthenticationType

az config set extension.use_dynamic_install=yes_without_prompt


echo "Service Principal Authentication"
az login --service-principal -u $ARM_CLIENT_ID -p $ARM_CLIENT_SECRET --tenant $ARM_TENANT_ID
az account list