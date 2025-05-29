using '../main.bicep'

param userAlias = '{alias}' //Replace {alias} with your student alias, and use it in your main.bicep as part of the name of the module deployment to avoid deployment conflicts (e.g. alias of 'aguadamillas@faculty.ie.edu' is 'aguadamillas')
param appServiceContainerBackendName = '{alias}-asc-backend' //Replace {alias} with your student alias to avoid deployment conflicts (e.g. alias of 'aguadamillas@faculty.ie.edu' is 'aguadamillas')
param appServicePlanName = '{alias}-asp' //Replace {alias} with your student alias to avoid deployment conflicts (e.g. alias of 'aguadamillas@faculty.ie.edu' is 'aguadamillas')
param containerRegistryName = '{alias}acr'  //Replace {alias} with your student alias to avoid deployment conflicts (e.g. alias of 'aguadamillas@faculty.ie.edu' is 'aguadamillas')
param postgreSQLDatabaseName = '{alias}-db'  //Replace {alias} with your student alias to avoid deployment conflicts (e.g. alias of 'aguadamillas@faculty.ie.edu' is 'aguadamillas')
param postgreSQLServerName = '{alias}-dbsrv'  //Replace {alias} with your student alias to avoid deployment conflicts (e.g. alias of 'aguadamillas@faculty.ie.edu' is 'aguadamillas')

// Exercise II (Option BICEP parameters): Add parameters to deploy the infrastructure. The names for the Azure resources must start with your student alias
