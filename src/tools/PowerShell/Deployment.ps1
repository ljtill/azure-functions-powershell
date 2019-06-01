param(
    [Parameter()]
    [string]$Name = "",

    [Parameter()]
    [string]$ResourceGroupName = "",

    [Parameter()]
    [string]$Mode = "Complete",

    [Parameter()]
    [string]$TemplateFile = "azuredeploy.json",

    [Parameter()]
    [string]$TemplateParameterFile = "azuredeploy.parameters.json"
)

begin {
    $path = (Split-Path (Split-Path $PSScriptRoot -Parent) -Parent)
    $params = @{
        Name                  = $name
        ResourceGroupName     = $resourceGroupName
        Mode                  = $mode
        TemplateFile          = ($path + "/src/templates/" + $templateFile)
        TemplateParameterFile = ($path + "/src/templates/" + $templateParameterFile)
        Force                 = $true
    }
}

process {
    New-AzResourceGroupDeployment @params
}

end { }