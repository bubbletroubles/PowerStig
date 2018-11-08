# OrganizationalSettings Syntax

## Constructor

Initializes a new instance of the OrganizationalSetting class to the value indicated by the RuleId and Value

```PowerShell
public OrganizationalSetting([string] $RuleId, [string] $Value)
```

### Parameters

| Name | Type | Description |
| - | - | - |
| RuleId | system.string | The Id of an individual Stig Rule. |
| Value | system.string | The specific organizational value to set for the associated Stig rule. |

## Property.RuleId

```PowerShell
public string {get; set;}
```

## Property.Value

```PowerShell
public string {get; set;}
```

## Method.PropertyMap

This method returns a Hashtable containing a mapping between a specific Stig rule type and the property of that Stig rule type that needs to be modified by the organizational setting

```PowerShell
public static PropertyMap()
```

### Parameters

* None

## Method.ConvertFrom.Xml

This method returns an OrganizationalSetting array based on the Xml document provided as the parameter. The Xml document must follow the same schema as the associated default org settings file for a given Stig

```PowerShell
public static ConvertFrom([xml] $OrganizationalSettingsXml)
```

### Parameters

| Name | Type | Description |
| - | - | - |
|OrganizationalSettingsXml | system.xml.xmldocument | An Xml document describing the implementing organization's settings for Stig rules with a valid range. |

## Method.ConvertFrom.Hashtable

This method returns an OrganizationalSetting array based on the Hashtable provided as the parameter. The Hashtable must follow the schema specified below.

```PowerShell
public static ConvertFrom([hashtable] $OrganizationalSettingsHashtable)
```

### Parameters

| Name | Type | Description |
| - | - | - |
|OrganizationalSettingsHashtable | System.Collections.Hashtable | A Hashtable describing the implementing organization's settings for Stig rules with a valid range. |