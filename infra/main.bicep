// Exercise II: Configure the input parameters to set up your development environment
param userAlias string
param appServiceContainerBackendName string
param appServicePlanName string
param containerRegistryName string
param keyVaultName string
param postgreSQLServerName string
param postgreSQLDatabaseName string
param location string = resourceGroup().location

// Exercise II: Configure the deployment of the appropriate modules for your hosting infrastructure. This is example code for a module deployment:
module containerRegistry 'modules/container-registry.bicep' = { //path to the module you want to deploy
  name: 'cr-${userAlias}' //Always include your userAlias within the name of the module deployment in order to avoid conflicts with other student's deployment
  params: {
    //Configure the required parameters for your module
  }
  dependsOn: [
    //Set up the dependencies with other modules
  ]
}
