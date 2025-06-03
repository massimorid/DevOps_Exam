using '../main.bicep'

param userAlias = 'mrangel' //Replace mrangel with your student alias, and use it in your main.bicep as part of the name of the module deployment to avoid deployment conflicts (e.g. alias of 'aguadamillas@faculty.ie.edu' is 'aguadamillas')
param appServiceContainerBackendName = 'mrangel-asc-backend' 
param appServicePlanName = 'mrangel-asp' 
param containerRegistryName = 'mrangelacr'  
param postgreSQLDatabaseName = 'mrangel-db'  
param postgreSQLServerName = 'mrangel-dbsrv'  

// Exercise II (Option BICEP parameters): Add parameters to deploy the infrastructure. The names for the Azure resources must start with your student alias
