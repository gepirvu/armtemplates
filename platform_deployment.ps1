$rg = 'avalonplatform01'
New-AzResourceGroup -Name $rg -Location westeurope -Force

#New-AzResourceGroupDeployment         -Name 'new-storage-account'          -ResourceGroupName $rg          -TemplateFile './01-datalake.json'  -datalakeName 'dronestgavalons'
#-TemplateParameterFile '.\01-storage.parameters.json'

#New-AzResourceGroupDeployment         -Name 'new-adb'          -ResourceGroupName $rg          -TemplateFile '02-adb.json'

#New-AzResourceGroupDeployment         -Name 'new-adb-env'          -ResourceGroupName $rg          -TemplateFile '99-main.json'
#New-AzResourceGroupDeployment -Name 'new-environment'  
# -ResourceGroupName $rg  -TemplateUri 'https://sharedstg.blob.core.windows.net/armtemplates/99-main.json' -TemplateParameterUri 'https://sharedstg.blob.core.windows.net/armtemplates/99-main.parameters.json'
New-AzResourceGroupDeployment -Name 'newen'  -ResourceGroupName $rg   -TemplateUri 'https://sharedstg.blob.core.windows.net/armtemplates/99-main.json' -TemplateParameterUri 'https://sharedstg.blob.core.windows.net/armtemplates/99-main.parameters.json'