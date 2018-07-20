# OrganizationalSettings Class

The OrganizationalSetting class describes OrganizationalSetting, a value for a Stig Rule that is specific to the implementing organization. Stigs requiring organizational settings will be accompanied by a default settings file. These can either be used as-is or replaced with values specific to the implementing organization. This Xml file will subsequently be transformed into OrganizationalSetting objects to be passed into and used in the StigData class constructor.

## Constructors

| Name | Description |
|-|-|
| OrganizationalSetting() | DO NOT USE - For testing only |
| [OrganizationalSetting(StigRuleId, Value)][Constructor] | A constructor for OrganizationalSetting. Returns a ready to use instance of OrganizationalSetting. |

## Properties

| Name | Description |
|-|-|
|[StigRuleId][Property.StigRuleId] | The Id of an individual Stig Rule. |
|[Value][Property.Value] | The specific organizational value to set for the associated Stig rule. |

## Methods

| Name | Description |
|-|-|
| [PropertyMap()][Method.PropertyMap] | The mapping of Stig rule types to the property needing to be modified within the Stig rule. |
| [ConvertFrom(xml)][Method.ConvertFrom.Xml] | Converts a provided Xml document into an OrganizationalSetting array. |
| [ConvertFrom(hashtable)][Method.ConvertFrom.Hashtable] | Converts a provided Hashtable into an OrganizationalSetting array. |

## Example

```PowerShell
$organizationalSetting = [OrganizationalSetting]::new('V-1090', '4')
```

[Constructor]: Stig.OrganizationalSettings.Class.Syntax#constructor
[Property.StigRuleId]: Stig.OrganizationalSettings.Class.Syntax#propertystigruleid
[Property.Value]: Stig.OrganizationalSettings.Class.Syntax#propertyvalue
[Method.PropertyMap]: Stig.OrganizationalSettings.Class.Syntax#methodpropertymap
[Method.ConvertFrom.Xml]: Stig.OrganizationalSettings.Class.Syntax#methodconvertfromxml
[Method.ConvertFrom.Hashtable]: Stig.OrganizationalSettings.Class.Syntax#methodconvertfromhashtable