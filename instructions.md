1. Create a file with a `.bicep` extension
  `touch main.bicep`

2.  Run bicep build
  `bicep build main.bicep`

You will see a new `main.json` file created that does not have any metadata, but it contains the schema for ARM.

3. Add bicep code to the `main.bicep` file. This can be any resource you're looking to create inside of Azure

4. Compile the code by running `bicep build main.bicep` again

Once you compile the code, you'll see that the `main.json` now contains metadata from the `main.bicep` file.

5. Run the Bicep file to create the Azure resource with Azure CLI or PowerShell

```Pwsh
New-AzResourceGroupDeployment -TemplateFile ./main.json -ResourceGroupName my-rg
```

```az
az deployment group create -f ./main.json -g my-rg
```

To deploy with parameters:

```Pwsh
New-AzResourceGroupDeployment -TemplateFile ./main.json -ResourceGroupName my-rg -location westus -name logstorage001
```

```az
az deployment group create -f ./main.json -g my-rg --parameters location=westus name=logstorage001
```