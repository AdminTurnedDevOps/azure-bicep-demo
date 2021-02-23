param location string = 'eastus'
param name string = 'bicepkeyvault92' // must be globally unique
param tenant string = 'fbbd9689-2869-42b8-92fb-db1c89b662ff'

resource keyvault 'Microsoft.KeyVault/vaults@2019-09-01' = {
  name: name
  location: location
  properties: {
    tenantId: tenant

    sku: {
      name: 'standard'
      family: 'A'
    }

    accessPolicies: []
  }
}