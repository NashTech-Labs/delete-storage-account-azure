#!/bin/sh

set -o errexit
set -o xtrace  # used for debugging

echo "Delete Storage Account"

echo "Enter Resource Group Name:"
read rg_name

echo "Enter Storage Account Name:"
read storage_account_name

result=$(az storage account delete \
    --resource-group $rg_name \
    --name $storage_account_name)

status=$?

[ $status -eq 0 ] && echo "Storage account created succesfully" || echo "Error creating Storage Acoount \n$result"