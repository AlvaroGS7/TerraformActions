RESOURCE_GROUP_NAME=tfstaterookies
STORAGE_ACCOUNT_NAME=tfstaterookies

# Create storage account
az storage account create --resource-group $RESOURCE_GROUP_NAME --name $STORAGE_ACCOUNT_NAME --sku Standard_LRS --encryption-services blob