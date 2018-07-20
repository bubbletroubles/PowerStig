# StigProperty Class

The StigProperty class describes a StigProperty, the abstracted key/value pair definition of any property within a Stig rule. A collection of StigProperty instances combine to for a complete description of a Stig rule. StigException instances are made up of a collection of StigProperty in order to override the existing values of those properties.

## Constructors

|||
|-|-|
| StigProperty() | DO NOT USE - For testing only |
| StigProperty(Name, Value) | A constructor for StigProperty. Returns a ready to use instance of StigProperty. |

## Properties

|||
|-|-|
| [Name](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.7.1) | The name of an individual property on a Stig Rule. |
| [Value](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.7.1) | The value of an individual property on a Stig Rule. |

## Methods

|||
|-|-|
| None | |

## Example

```PowerShell
$Name  = '' # TO DO
$Value = '' # TO DO

$stigProperty = [StigProperty]::new($Name, $Value)
```
