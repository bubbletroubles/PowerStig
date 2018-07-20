# OrganizationalSettings Class

The OrganizationalSetting class describes OrganizationalSetting, a value for a Stig Rule that is specific to the implementing organization. Stigs requiring organizational settings will be accompanied by a default settings file. These can either be used as-is or replaced with values specific to the implementing organization. This Xml file will subsequently be transformed into OrganizationalSetting objects to be passed into and used in the StigData class constructor.

## Constructors

| Name | Description |
|-|-|
| OrganizationalSetting() | DO NOT USE - For testing only |
| [OrganizationalSetting(StigRuleId, Value)][OrganizationalSettings] | A constructor for OrganizationalSetting. Returns a ready to use instance of OrganizationalSetting. |

## Properties

| Name | Description |
|-|-|
|[StigRuleId](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.7.1) | The Id of an individual Stig Rule. |
|[Value](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.7.1) | The specific organizational value to set for the associated Stig rule. |

## Methods

| Name | Description |
|-|-|
| PropertyMap() | The mapping of Stig rule types to the property needing to be modified within the Stig rule. |
| ConvertFrom(xml) | Converts a provided Xml document into an OrganizationalSetting array. |
| ConvertFrom(hashtable) | Converts a provided Hashtable into an OrganizationalSetting array. |

## Example

```PowerShell
$organizationalSetting = [OrganizationalSetting]::new('V-1090', '4')
```

[OrganizationalSettings]: Stig.OrganizationalSettings.Class.Syntax#Constructor