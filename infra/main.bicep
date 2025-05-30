// Exercise II: Configure the input parameters to set up your development environment
param userAlias string = 'mridella'
param keyVaultName string = '${userAlias}-kv'
param appServiceContainerBackendName string
param appServicePlanName string
param containerRegistryName string
param postgreSQLServerName string
param postgreSQLDatabaseName string
param location string = resourceGroup().location
@secure()
param administratorLogin string
@secure()
param administratorPassword string



//Deploy Key Vault
module keyVault 'modules/key-vault.bicep' = {
  name: 'keyVault'
  params: {
    location: location
    name: keyVaultName
  }
}

//Deploy App Service Plan
module appServicePlan 'modules/app-service-plan.bicep' = {
  name: 'appServicePlan'
  params: {
    location: location
    appServicePlanName: appServicePlanName
    skuName: 'B1'
  }
}

//Deploy Container Registry
module containerRegistry 'modules/container-registry.bicep' = {
  name: 'containerRegistry'
  params: {
    location: location
    name: containerRegistryName
  }
}

//Deploy PostgreSQL Server
module postgreSQLServer 'modules/postgre-sql-server.bicep' = {
  name: 'postgreSQLServer'
  params: {
    location: location
    name: postgreSQLServerName
    administratorLogin: administratorLogin
    administratorPassword: administratorPassword
  }
}

//Deploy PostgreSQL Database
module postgreSQLDatabase 'modules/postgre-sql-db.bicep' = {
  name: 'postgreSQLDatabase'
  params: {
    name: postgreSQLDatabaseName
    postgreSqlServerName: postgreSQLServer.outputs.serverName
  }
}
