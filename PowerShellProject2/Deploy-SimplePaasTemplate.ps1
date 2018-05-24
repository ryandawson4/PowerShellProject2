### Define Deployment Variables
{
$location = 'UK South'
$resourceGroupName = 'PITS-DATA-RG'
$resourceDeploymentName = 'contoso-paas-template-deployment'
$templatePath = "C:\Users\ryand\Source\Repos\pluralsight\microsoft-azure-resource-manager-mastering\"
$templateFile = 'simplePaas.json'
$template = $templatePath + '\' + $templateFile
}

### Create Resource Group
#{
#New-AzureRmResourceGroup `
#    -Name $resourceGroupName `
#    -Location $location `
#    -Verbose -Force
#}

### Deploy Resources
{
New-AzureRmResourceGroupDeployment `
    -Name $resourceDeploymentName `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile $template `
    -Verbose -Force
}