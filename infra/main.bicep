// Exercise II: Configure the input parameters to set up your development environment
param appServicePlanName string
param containerRegistryName string
param keyVaultName string
param postgreSQLServerName string
param postgreSQLDatabaseName string
param location string = resourceGroup().location
@secure()
param administratorPassword string 
@secure()
param administratorLogin string

module containerRegistry 'modules/container-registry.bicep' = {
  name: 'containerRegistry'
  params: {
    location: location
    name: containerRegistryName
  }
}

module appServicePlan 'modules/app-service-plan.bicep' = {
  name: 'appServicePlan'
  params: {
    location: location
    appServicePlanName: appServicePlanName
    skuName: 'B1'
  }
}

module keyVault 'modules/key-vault.bicep' = {
  name: 'keyVault'
  params: {
    location: location
    name: keyVaultName
    roleAssignments: []
  }
}

module postgreSQLServer 'modules/postgre-sql-server.bicep' = {
  name: 'postgreSQLServer'
  params: {
    location: location
    name: postgreSQLServerName
    administratorLogin: administratorLogin
    administratorPassword: administratorPassword
  }
}

module postgreSQLDatabase 'modules/postgre-sql-db.bicep' = {
  name: 'postgreSQLDatabase'
  params: {
    name: postgreSQLDatabaseName
    postgreSqlServerName: postgreSQLServerName
  }
}
