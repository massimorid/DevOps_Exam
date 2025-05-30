// Exercise II: Configure the input parameters to set up your development environment
param userAlias string = 'mridella'
param keyVaultName string = '${userAlias}-kv'
//param appServiceContainerBackendName string
//param appServicePlanName string
//param containerRegistryName string
//param postgreSQLServerName string
//param postgreSQLDatabaseName string
param location string = resourceGroup().location



//Deploy Key Vault
module keyVault 'modules/key-vault.bicep' = {
  name: 'keyVault'
  params: {
    location: location
    name: keyVaultName
  }
}
