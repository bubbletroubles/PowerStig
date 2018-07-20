# TechnologyVersion

The TechnologyVersion class describes a TechnologyVersion, the definition of the specific version of the application or portion of an application that the Stig applies to. The TechnologyVersion is one of a few Technology focused classes that work together to form a complete description of the Stig required by the user or application creating the StigData instance.

## Constructors

|||
|-|-|
| TechnologyVersion() | DO NOT USE - For testing only |
| TechnologyVersion(Name, Technology) | A constructor for TechnologyVersion. Returns a ready to use instance of TechnologyVersion. |

## Properties

|||
|-|-|
| [Name](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.7.1) | The name of a version of technology of the Stig to select. |
| [Technology](Technology.md) | The Technology instance for the selected version. |
| ValidateSet *[s]* | The available versions for each technology currently in PowerStig. |

## Methods

|||
|-|-|
| Validate() | This method validates that the provided name for the TechnologyVersion is available for a given Technology in PowerStig. |
| Available(TechnologyVersion) *[s]* | This method returns TechnologyVersions for a given Technology name currently available in PowerStig. |

## Example

```PowerShell
$Name = '2012R2'
$Technology = [Technology]::Windows
$technologyVersion = [TechnologyVersion]::new($Name, $Technology)
```
