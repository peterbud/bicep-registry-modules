# Azure SQL Server Administrators `[Microsoft.Sql/servers/administrators]`

This module deploys an Azure SQL Server Administrators resource.

## Navigation

- [Resource Types](#Resource-Types)
- [Parameters](#Parameters)
- [Outputs](#Outputs)

## Resource Types

| Resource Type | API Version |
| :-- | :-- |
| `Microsoft.Sql/servers/administrators` | [2023-08-01-preview](https://learn.microsoft.com/en-us/azure/templates/Microsoft.Sql/servers/administrators) |

## Parameters

**Required parameters**

| Parameter | Type | Description |
| :-- | :-- | :-- |
| [`login`](#parameter-login) | string | Login name of the server administrator. |
| [`name`](#parameter-name) | string | The name of the administrators resource. |
| [`sid`](#parameter-sid) | string | SID (object ID) of the server administrator. |

**Conditional parameters**

| Parameter | Type | Description |
| :-- | :-- | :-- |
| [`serverName`](#parameter-servername) | string | The Name of SQL Server. Required if the template is used in a standalone deployment. |

**Optional parameters**

| Parameter | Type | Description |
| :-- | :-- | :-- |
| [`administratorType`](#parameter-administratortype) | string | Type of the server administrator. |
| [`tenantId`](#parameter-tenantid) | string | Tenant ID of the administrator. |

### Parameter: `login`

Login name of the server administrator.

- Required: Yes
- Type: string

### Parameter: `name`

The name of the administrators resource.

- Required: Yes
- Type: string

### Parameter: `sid`

SID (object ID) of the server administrator.

- Required: Yes
- Type: string

### Parameter: `serverName`

The Name of SQL Server. Required if the template is used in a standalone deployment.

- Required: Yes
- Type: string

### Parameter: `administratorType`

Type of the server administrator.

- Required: No
- Type: string
- Default: `'ActiveDirectory'`

### Parameter: `tenantId`

Tenant ID of the administrator.

- Required: No
- Type: string
- Default: `[subscription().tenantId]`

## Outputs

_None_
