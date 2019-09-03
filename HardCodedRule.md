# How the HardCodedRule works (v4.0 and above)

1. When the xccdf is imported, the log file framework replaces the entire Check Content property with a specially crafted HardCodedRule string.
2. When the ConvertTo-PowerStigXml function is called, it imports the xccdf and the log file, performs the Check Content replacement and then begins parsing.
3. If the parser encounters a Check Content block that begins with **HardCodedRule**, it is redirected to the **HardCodedRuleConvert** class. Based on the Check Content string, the **HardCodedRuleConvert** class determines the RuleType, DscResource and Parameters with possible values.
4. When the RuleType, DscResource and Parameters are identified, the **HardCodedRuleConvert** class creates the specified rule type object, then assigns the defined values.
5. If any values are not defined during this process, the rule property **OrganizationValueRequired** will be set to **true** and any null value property will be added to the OrgSettings file for consumption during mof compilation.

## HardCodedRule Automation

* Rules can be Hard Coded with Check Content replacement using the log file, leveraging the replace all feature "*".
* In order to generate a HardCodedRule log file entry, the **Get-HardCodedRuleLogFileEntry** function can be leveraged.
* Example Entries:
  * Single Rule:
    * **V-1000::*::HardCodedRule(WindowsFeatureRule)@{DscResource = 'WindowsFeature'; Name = 'Web-Ftp-Server'; Ensure = 'Absent'}**
  * Split Rule would include the structure from the Single Rule with the **\<splitRule>** delimiter appended to the end of the string:
    * **...\<splitRule>HardCodedRule(WindowsFeatureRule)@{DscResource = 'WindowsFeature'; Name = $null; Ensure = 'Absent'}**
* Note: If a user needs to supply a value, the hashtable DscResource parameter should be set to $null, like the Split Rule example above.

## Examples

The example below creates a blank WindowsFeatureRule HardCodedRule entry.

```PowerShell
PS C:\> Import-Module .\PowerStig.Convert.psm1
PS C:\> Get-HardCodedRuleLogFileEntry -RuleId V-1000 -RuleType WindowsFeatureRule
V-1000::*::HardCodedRule(WindowsFeatureRule)@{DscResource = 'WindowsFeature'; Ensure = $null; Name = $null}
```

The example below creates a blank split rule, the first is a WindowsFeatureRule, the second is a FileContentRule.

```PowerShell
PS C:\> Get-HardCodedRuleLogFileEntry -RuleId V-1000 -RuleType WindowsFeatureRule, FileContentRule
V-1000::*::HardCodedRule(WindowsFeatureRule)@{DscResource = 'WindowsFeature'; Ensure = $null; Name = $null}<splitRule>HardCodedRule(FileContentRule)@{DscResource = 'ReplaceText'; Key = $null; Value = $null}
```

## Complex Examples

### PermissionRule

There are specific rules that require complex objects as values, usually represented by a hashtable.  The example below can be used to create a PermissionRule:

```PowerShell
PS C:\> Import-Module .\PowerStig.Convert.psm1
PS C:\> Get-HardCodedRuleLogFileEntry -RuleId V-1000 -RuleType PermissionRule
V-1000::*::HardCodedRule(PermissionRule)@{DscResource = ''; AccessControlEntry = $null; Force = $null; Path = $null}
```

The output can then be modified to reflect the following string. This string will configure RuleId V-1000 for **%windir%\SYSTEM32\WINEVT\LOGS\Application.evtx** with 'EventLog' and 'System' as FullControl.

```PowerShell
V-1000::*::HardCodedRule(PermissionRule)@{DscResource = 'NTFSAccessEntry'; AccessControlEntry = @(@{Type = $null; Principal = 'Eventlog'; ForcePrincipal = 'False'; Inheritance = $null; Rights = 'FullControl'}, @{Type = $null; Principal = 'SYSTEM'; ForcePrincipal = 'False'; Inheritance = $null; Rights = 'FullControl'}); Force = 'True'; Path = '%windir%\SYSTEM32\WINEVT\LOGS\Application.evtx'}
```

### IisLoggingRule

The example below can be used to create a IisLoggingRule:

```PowerShell
PS C:\> Import-Module .\PowerStig.Convert.psm1
PS C:\> Get-HardCodedRuleLogFileEntry -RuleId V-1000 -RuleType IisLoggingRule
V-1000::*::HardCodedRule(IisLoggingRule)@{DscResource = 'XWebsite'; LogCustomFieldEntry = $null; LogFlags = $null; LogFormat = $null; LogPeriod = $null; LogTargetW3C = $null}
```

Some rule types have null value properties by default. When this is the case, do not allow those properties in the HardCodedRule log file string, those should be removed. The example below can be used to create an IisLoggingRule, notice the LogPeriod and LogTargetW3C properties have been removed.

```PowerShell
V-1000::*::HardCodedRule(IISLoggingRule)@{DscResource = 'XWebsite'; LogCustomFieldEntry = @(@{SourceType = 'ServerVariable'; SourceName = 'HTTP_USER_AGENT'},@{SourceType = 'RequestHeader'; SourceName = 'Authorization'}); LogFlags = 'UserAgent,UserName,Referer'; LogFormat = 'W3C'}
```
