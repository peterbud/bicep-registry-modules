metadata name = 'Azure SQL Server Administrators'
metadata description = 'This module deploys an Azure SQL Server Administrators resource.'
metadata owner = 'Azure/module-maintainers'

// https://azure.github.io/PSRule.Rules.Azure/en/rules/Azure.SQL.AAD/

@description('Required. The name of the administrators resource.')
param name string

@description('Conditional. The Name of SQL Server. Required if the template is used in a standalone deployment.')
param serverName string

@description('Optional. Type of the server administrator.')
param administratorType string = 'ActiveDirectory'

@description('Required. Login name of the server administrator.')
param login string

@description('Required. SID (object ID) of the server administrator.')
@minLength(36)
@maxLength(36)
param sid string

@description('Optional. Tenant ID of the administrator.')
@minLength(36)
@maxLength(36)
param tenantId string = subscription().tenantId

resource server 'Microsoft.Sql/servers@2023-08-01-preview' existing = {
  name: serverName
}

resource administrators 'Microsoft.Sql/servers/administrators@2023-08-01-preview' = {
  name: name
  parent: server
  properties: {
    administratorType: administratorType
    login: login
    sid: sid
    tenantId: tenantId
  }
}
