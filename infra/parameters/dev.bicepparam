using '../main.bicep'

param userAlias = 'mridella' //Replace mridella with your student alias, and use it in your main.bicep as part of the name of the module deployment to avoid deployment conflicts (e.g. alias of 'aguadamillas@faculty.ie.edu' is 'aguadamillas')
param appServiceContainerBackendName = 'mridella-asc-backend' //Replace mridella with your student alias to avoid deployment conflicts (e.g. alias of 'aguadamillas@faculty.ie.edu' is 'aguadamillas')
param appServicePlanName = 'mridella-asp' //Replace mridella with your student alias to avoid deployment conflicts (e.g. alias of 'aguadamillas@faculty.ie.edu' is 'aguadamillas')
param containerRegistryName = 'mridellaacr'  //Replace mridella with your student alias to avoid deployment conflicts (e.g. alias of 'aguadamillas@faculty.ie.edu' is 'aguadamillas')
param postgreSQLDatabaseName = 'mridella-db'  //Replace mridella with your student alias to avoid deployment conflicts (e.g. alias of 'aguadamillas@faculty.ie.edu' is 'aguadamillas')
param postgreSQLServerName = 'mridella-dbsrv'  //Replace mridella with your student alias to avoid deployment conflicts (e.g. alias of 'aguadamillas@faculty.ie.edu' is 'aguadamillas')

// Exercise II (Option BICEP parameters): Add parameters to deploy the infrastructure. The names for the Azure resources must start with your student alias
