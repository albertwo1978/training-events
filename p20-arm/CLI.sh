##SETUP##


#Install Azure CLI
#https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest

#Login and set Azure Subscription

az login

az account set --subscription "<SUBSCRIPTION_NAME>" 


##DEPLOY TEMPLATE##


#https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-template-deploy-cli

az group create --name P20-RG01 --location "eastus2"
az group deployment create \
    --name P20Deployment \
    --resource-group P20-RG01 \
    --template-file challenge-01-basic-output.json \
    --parameters genericInput="Hello World"