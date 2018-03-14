##SETUP##


#Install Azure CLI
#https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest

#Login and set Azure Subscription

az login

az account set --subscription "<SUBSCRIPTION_NAME>" 


##DEPLOY CHALLENGE ONE##


#https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-template-deploy-cli

az group create --name P20-RG01 --location "eastus2"

#With Inputs
az group deployment create \
    --name P20Deployment \
    --resource-group P20-RG01 \
    --template-file challenge-01-basic-output.json \
    --parameters genericInput="Hello World"

#With Parameters File
az group deployment create \
    --name P20Deployment \
    --resource-group P20-RG01 \
    --template-file challenge-01-basic-output.json \
    --parameters challenge-01.parameters.json


##DEPLOY CHALLENGE TWO##


#With Inputs
az group deployment create \
    --name P20Deployment \
    --resource-group P20-RG02 \
    --template-file challenge-02-vnet-one-subnet.json \
    --parameters vnetName="P20VNet" vnetPrefix="10.0.0.0/16" subnetName="Default" subnetPrefix="10.0.0.0/24"

#With Parameters File
az group deployment create \
    --name P20Deployment \
    --resource-group P20-RG02 \
    --template-file challenge-02-vnet-one-subnet.json \
    --parameters challenge-02.parameters.json


##DEPLOY CHALLENGE THREE##


#With Parameters File
az group deployment create \
    --name P20Deployment \
    --resource-group P20-RG02 \
    --template-file challenge-03-vnet-with-nsg.json \
    --parameters challenge-03.parameters.json


##DEPLOY CHALLENGE FOUR##


#Reference - https://github.com/Azure/azure-quickstart-templates/blob/052db5feeba11f85d57f170d8202123511f72044/apache2-on-ubuntu-vm/azuredeploy.json

#With Parameters File
az group deployment create \
    --name P20Deployment \
    --resource-group P20-RG02 \
    --template-file challenge-04-web-server.json \
    --parameters challenge-04.parameters.json


##DEPLOY CHALLENGE FIVE##


#Reference - https://github.com/Azure/azure-quickstart-templates/tree/052db5feeba11f85d57f170d8202123511f72044/201-2-vms-loadbalancer-lbrules

#With Parameters File
az group deployment create \
    --name P20Deployment \
    --resource-group P20-RG02 \
    --template-file challenge-05-load-balanced-web-server.json \
    --parameters challenge-05.parameters.json


##DEPLOY CHALLENGE SIX##


#Reference - https://github.com/Azure/azure-quickstart-templates/tree/052db5feeba11f85d57f170d8202123511f72044/101-loadbalancer-with-nat-rule

#With Parameters File
az group deployment create \
    --name P20Deployment \
    --resource-group P20-RG02 \
    --template-file challenge-06-load-balanced-nat-rule.json \
    --parameters challenge-06.parameters.json
    