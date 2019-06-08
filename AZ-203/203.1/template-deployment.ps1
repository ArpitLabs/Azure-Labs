Login-AzAccount

# Find current subscription
Get-AzContext

# Select another subscription if needed
# Set-AzContext -SubscriptionId '<subscription id>'

$resourcegroup = 'pstemplate'
$templatepath = '.\templates\simple.json'
$templateparameterspath = '.\templates\simple-param.json'

# Create resouce group if not exists
New-AzResourceGroup -Name $resourcegroup -Location 'westus' -ErrorAction SilentlyContinue

# Deploy ARM template
New-AzResourceGroupDeployment -Name deployment_ps -ResourceGroupName $resourcegroup -TemplateFile $templatepath -TemplateParameterFile $templateparameterspath