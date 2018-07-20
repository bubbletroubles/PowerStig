# TechnologyRole Class

The TechnologyRole class describes a TechnologyRole, the definition of the specific application or portion of an application that the Stig applies to. The TechnologyRole is one of a few Technology focused classes that work together to form a complete description of the Stig required by the user or application creating the StigData instance.

## Constructors

| Name | Description |
|-|-|
| TechnologyRole() | DO NOT USE - For testing only |
| TechnologyRole(Name, TechnologyVersion) | A constructor for TechnologyRole. Returns a ready to use instance of TechnologyRole. |

## Properties

| Name | Description |
|-|-|
| [Name](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.7.1) | The name of a role of technology of the Stig to select. |
| [TechnologyVersion](TechnologyVersion.md) | The TechnologyVersion instance for the selected role. |
| ValidateSet *[s]* | The available roles for each version of technology currently in PowerStig. |

## Methods

| Name | Description |
|-|-|
| Validate() | This method validates that the provided name for the TechnologyRole is available for a given TechnologyVersion in PowerStig. |
| Available(TechnologyVersion) *[s]* | This method returns TechnologyRoles for a given TechnologyVersion name currently available in PowerStig. |

## Example

```PowerShell
$Name = '' # TO DO
$TechnologyVersion [TechnologyVersion]::new() # TO DO

$technologyRole = [TechnologyRole]::new($Name, $TechnologyVersion)
```
