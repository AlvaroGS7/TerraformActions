CONTAINER_NAME=tfstaterookies
STORAGE_ACCOUNT_NAME=tfstaterookies

# Create blob container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT_NAME