param(
    [Parameter()]
    [string]$Name = "",

    [Parameter()]
    [string]$ResourceGroupName = "",

    [Parameter()]
    [string]$SubscriptionId = "",

    [Parameter()]
    [string]$Mode = "",

    [Parameter()]
    [string]$TemplateFile = "azuredeploy.json"
)

begin {
    $path = (Split-Path (Split-Path $PSScriptRoot -Parent) -Parent)
    $parameters = @{
        StorageAccountName = ""
        ComponentName      = ""
        ServerfarmName     = ""
        SiteName           = ""
        KeyVaultName       = ""
    }
    $params = @{
        Name                    = $name
        ResourceGroupName       = $resourceGroupName
        Mode                    = $mode
        TemplateFile            = ($path + "/templates/" + $templateFile)
        TemplateParameterObject = $parameters
        Force                   = $true
    }
}

process {
    Set-AzContext -SubscriptionId $subscriptionId | Out-Null
    New-AzResourceGroupDeployment @params
}

end { }