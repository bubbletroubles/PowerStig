# StigException

The StigException class describes a StigException, the collection of StigProperty to override on a specific Stig rule.

## Constructors

|||
|-|-|
| StigException() | DO NOT USE - For testing only |
| StigException(StigRuleId, Properties) | A constructor for StigException. Returns a ready to use instance of StigException. |

## Properties

|||
|-|-|
| [StigRuleId](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.7.1) | The Id of an individual Stig Rule. |
| [Properties[]](.StigProperty.md) | An array of properties and their values to override on a Stig rule. |

## Methods

|||
|-|-|
| AddProperty(StigProperty) | Adds a StigPropery instance to the StigException Properties property. |
| AddProperty(Name, Value) |Adds a StigPropery instance to the StigException Properties property based on the provided key/value pair. |
| ConvertFrom(hashtable) | Converts a provided hashtable of Stig exceptions into a StigException array |

## Example

```PowerShell
$StigRuleId = 'V-1090'
$Properties = [StigProperty]::new() # TO DO

$stigException = [StigException]::new($StigRuleId, $Properties)
```
