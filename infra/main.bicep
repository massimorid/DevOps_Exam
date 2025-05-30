// Exercise II: Configure the input parameters to set up your development environment
param userAlias string
param appServiceContainerBackendName string
param appServicePlanName string
param containerRegistryName string
param keyVaultName string = '${userAlias}-kv'
param postgreSQLServerName string
param postgreSQLDatabaseName string
param location string = resourceGroup().location


module keyVault 'modules/key-vault.bicep' = {
  name: 'keyVault'
  params: {
    location: location
    name: keyVaultName
  }
}
