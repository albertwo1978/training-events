##SETUP##


#Install Azure PowerShell 
#https://docs.microsoft.com/en-us/powershell/azure/install-azurerm-ps?view=azurermps-4.4.1

Install-Module AzureRM -AllowClobber

#Login and set Azure Subscription
#https://blogs.msdn.microsoft.com/benjaminperkins/2017/08/02/how-to-set-azure-powershell-to-a-specific-azure-subscription/

Login-AzureRmAccount

Set-AzureRmContext -Subscription "<SUBSCRIPTION_NAME>" 


##DEPLOY TEMPLATE##


#https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-group-template-deploy

New-AzureRmResourceGroup -Name P20-RG04 -Location eastus2
New-AzureRmResourceGroupDeployment -Name ExampleDeployment -ResourceGroupName P20-RG04 `
  -TemplateFile challenge-01-basic-output.json `
  -genericInput "Hello World"
