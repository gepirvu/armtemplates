$rg = 'de-svc-pricing-t-rg'
#New-AzResourceGroup -Name $rg -Location westeurope -Force

#New-AzResourceGroupDeployment         -Name 'new-storage-account'          -ResourceGroupName $rg          -TemplateFile './01-datalake.json'  -datalakeName 'dronestgavalons'
#-TemplateParameterFile '.\01-storage.parameters.json'

#New-AzResourceGroupDeployment         -Name 'new-adb'          -ResourceGroupName $rg          -TemplateFile '02-adb.json'
$User = "d728e392-78fe-44fb-aca6-0d5815411d28"

$Password = ConvertTo-SecureString -String "XoUZQSPKBYLTO4gmEgDZb30aktNEfWUoFIaw1OMMwwi0meS8j5sahgGfWElUVZIO" -AsPlainText -Force

$cred = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, $Password
Connect-AzAccount -Credential $cred -Tenant "1878a48b-63d6-4d12-a900-07d4267f6762" -Subscription "c0625ef7-6e06-488d-8cbd-49cf482fe41e" -ServicePrincipal 




#New-AzResourceGroupDeployment -ResourceGroupName "de-svc-pricing-d-rg" -TemplateUri $TemplateUri -TemplateParameterUri $TemplateParamterUri -Verbose
#New-AzResourceGroupDeployment         -Name 'new-adb-env'          -ResourceGroupName $rg          -TemplateFile '99-main.json'
#New-AzResourceGroupDeployment -Name 'new-environment'  
# -ResourceGroupName $rg  -TemplateUri 'https://sharedstg.blob.core.windows.net/armtemplates/99-main.json' -TemplateParameterUri 'https://sharedstg.blob.core.windows.net/armtemplates/99-main.parameters.json'
#New-AzResourceGroupDeployment -Name 'newen'  -ResourceGroupName $rg   -TemplateUri 'https://raw.githubusercontent.com/gepirvu/armtemplates/c6e7ea7afb5b315e5d6d0d3735a4f5e0428c10d3/main.json' -TemplateParameterUri 'https://raw.githubusercontent.com/gepirvu/armtemplates/c6e7ea7afb5b315e5d6d0d3735a4f5e0428c10d3/adls/azuredeploy.parameters.json'
#New-AzResourceGroupDeployment -Name 'newen'  -ResourceGroupName $rg -TemplateFile './main.json' -TemplateParameterFile '.\main.parameters.json'
New-AzResourceGroupDeployment -Name 'pricingdeployment'  -ResourceGroupName $rg -TemplateUri 'https://raw.githubusercontent.com/gepirvu/armtemplates/main/main.json' -TemplateParameterUri 'https://raw.githubusercontent.com/gepirvu/armtemplates/main/main.parameters.json' -environment 't'