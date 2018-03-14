##SETUP##


#Install Azure PowerShell 
#https://docs.microsoft.com/en-us/powershell/azure/install-azurerm-ps?view=azurermps-4.4.1

Install-Module AzureRM -AllowClobber

#Login and set Azure Subscription
#https://blogs.msdn.microsoft.com/benjaminperkins/2017/08/02/how-to-set-azure-powershell-to-a-specific-azure-subscription/

Login-AzureRmAccount

Set-AzureRmContext -Subscription "<SUBSCRIPTION_NAME>" 


##DEPLOY CHALLENGE ONE##


#https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-template-deploy

New-AzureRmResourceGroup -Name P20-RG04 -Location eastus2

#With Inputs
New-AzureRmResourceGroupDeployment -Name P20Deployment -ResourceGroupName P20-RG04 `
  -TemplateFile challenge-01-basic-output.json `
  -genericInput "Hello World"

 #With Parameters File
 New-AzureRmResourceGroupDeployment -Name P20Deployment -ResourceGroupName P20-RG04 `
 -TemplateFile challenge-01-basic-output.json `
 -TemplateParameterFile .\challenge-01.parameters.json


 ##DEPLOY CHALLENGE TWO##


 #With Inputs
  New-AzureRmResourceGroupDeployment -Name P20Deployment -ResourceGroupName P20-RG04 `
  -TemplateFile challenge-02-vnet-one-subnet.json `
  -vnetName "P20VNet" `
  -vnetPrefix "10.0.0.0/16" `
  -subnetName "Default" `
  -subnetPrefix "10.0.0.0/24"

  #With Parameters File
  New-AzureRmResourceGroupDeployment -Name P20Deployment -ResourceGroupName P20-RG04 `
  -TemplateFile challenge-02-vnet-one-subnet.json `
  -TemplateParameterFile .\challenge-02.parameters.json


 ##DEPLOY CHALLENGE THREE##


 #With Parameters File
 New-AzureRmResourceGroupDeployment -Name P20Deployment -ResourceGroupName P20-RG04 `
 -TemplateFile challenge-03-vnet-with-nsg.json `
 -TemplateParameterFile .\challenge-03.parameters.json


##DEPLOY CHALLENGE FOUR##


#Reference - https://github.com/Azure/azure-quickstart-templates/blob/052db5feeba11f85d57f170d8202123511f72044/apache2-on-ubuntu-vm/azuredeploy.json


#With Parameters File
New-AzureRmResourceGroupDeployment -Name P20Deployment -ResourceGroupName P20-RG04 `
  -TemplateFile challenge-04-web-server.json `
  -TemplateParameterFile .\challenge-04.parameters.json
