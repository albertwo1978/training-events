param 
  ( 
    [object]$WebhookData
)
if ($WebhookData -ne $null) { 
    # Collect properties of WebhookData.
    $WebhookName = $WebhookData.WebhookName
    $WebhookBody = $WebhookData.RequestBody
    $WebhookHeaders = $WebhookData.RequestHeader
    # Information on the webhook name that called This
    Write-Output "This runbook was started from webhook $WebhookName."
    # Obtain the WebhookBody containing the AlertContext
    $WebhookBody = (ConvertFrom-Json -InputObject $WebhookBody)
    Write-Output "`nWEBHOOK BODY"
    Write-Output "============="
    Write-Output $WebhookBody
    # Obtain the AlertContext
    $AlertContext = [object]$WebhookBody.context
    # Some selected AlertContext information
    Write-Output "`nALERT CONTEXT DATA"
    Write-Output "==================="
    Write-Output $AlertContext.name
    Write-Output $AlertContext.subscriptionId
    Write-Output $AlertContext.resourceGroupName
    Write-Output $AlertContext.resourceName
    Write-Output $AlertContext.resourceType
    Write-Output $AlertContext.resourceId
    Write-Output $AlertContext.timestamp

    # Login to Azure using Service Principal 
    $secpasswd = ConvertTo-SecureString "<client_secret>" -AsPlainText -Force
    $mycreds = New-Object System.Management.Automation.PSCredential ("<client_id>", $secpasswd)
    Login-AzureRmAccount -ServicePrincipal -Tenant <tenant_id> -Credential $mycreds  -Subscription <subscription_id>

    # Set Parameters
    $RGName = $AlertContext.resourceGroupName

    New-AzureRmResourceGroupDeployment -Name AA101Deployment -ResourceGroupName P20-RG01 `
    -TemplateUri https://raw.githubusercontent.com/albertwo1978/training-events/master/azure-automation-101/autoscale-load-balanced-web-server.json
}
else 
{
    Write-Error "This runbook is meant to only be started from a webhook." 
}