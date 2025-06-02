// Exercise II: Configure the input parameters to set up your development environment
param userAlias string 
param appServicePlanName string
param containerRegistryName string
param keyVaultName string
param postgreSQLServerName string
param postgreSQLDatabaseName string
param location string = resourceGroup().location


module containerRegistry 'modules/container-registry.bicep' = {
  name: 'containerRegistry'
  params: {
    location: location
    name: containerRegistryName
  }
}
