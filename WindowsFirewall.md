# WindowsFirewall

A composite DSC resource to manage the Windows Firewall STIG settings

## Requirements

None

## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --------- | --------- | -------- | ----------- | -------------- |
| StigVersion | False | Version | The version of the Firewall STIG to apply and/or monitor | 1.6 |
| Exception | False | PSObject | A hashtable of @{StigId = @{Property = 'Value'}} that is injected into the STIG data and applied to the target node. |  |
| OrgSettings | False | PSObject | The path to the xml file that contains the local organizations preferred settings for STIG items that have allowable ranges. |  |
| SkipRule | False | PSObject | The SkipRule Node is injected into the STIG data and applied to the taget node. The title of STIG settings are tagged with the text 'Skip' to identify the skips to policy across the data center when you centralize DSC log collection. |  |
| SkipRuleType | False | PSObject | All STIG rule IDs of the specified type are collected in an array and passed to the Skip-Rule function. Each rule follows the same process as the SkipRule parameter. |  |

## Examples

### Azure deployment of Firewall STIG configuration

> Tip: If you are deploying PowerSTIG to an Azure VM you may experience connectivity issues due to a default inbound deny all rule for specific profiles. You will need to configure a rule to allow RDP inbound from Azure or skip the rule (DomainProfile = V-17418, PublicProfile =  V-17438, PrivateProfile = V-17428). You must skip Rule.a and Rule.b. 

```PowerShell

    WindowsFirewall STIG_WindowsFirewall
    {
        #PublicProfile Azure Example
        Skiprule = @('V-17438.a','V-17438.b')

    }
```

### Apply the latest Windows Firewall STIG to a node

```PowerShell
<#
    Use the embedded STIG data with default range values.
    In this example, the Windows Firewall V1 R6 STIG is processed by the
    composite resource and merges in the default values for any settings
    that have a valid range.
#>

configuration Example
{
    param
    (
        [parameter()]
        [string]
        $NodeName = 'localhost'
    )

    Import-DscResource -ModuleName PowerStig

    Node $NodeName
    {
        WindowsFirewall EnterpriseFirewallPolicy
        {
            StigVersion = '1.6'
        }
    }
}

Example
```

### Apply the Windows Firewall STIG to a node, but override the value of V-17415.a

```PowerShell
<#
    Use embedded STIG data and inject exception data.
    In this example, the Windows Firewall V1 R6 STIG is processed by the composite
    resource and merges in the default values for any settings that have a valid range.
    Additionally, an exception is added inline to the configuration, so that the setting
    in STIG ID V-17415.a would be over written with the value 0.
#>

configuration Example
{
    param
    (
        [parameter()]
        [string]
        $NodeName = 'localhost'
    )

    Import-DscResource -ModuleName PowerStig

    Node $NodeName
    {
        WindowsFirewall Sample_WindowsFirewall_Exception
        {
            StigVersion = '1.6'
            Exception   = @{'V-17415.a'= @{'ValueData'='0'}}
        }
    }
}

Example
```

### Apply the Windows Firewall STIG to a node, but skip the V-17415.a setting

```PowerShell
<#
    Use embedded STIG data and inject a skipped rule.
    In this example, the Windows Firewall V1 R6 STIG is processed by the composite
    resource and merges in the default values for any settings that have a valid range.
    Additionally, a skip is added inline to the configuration, so that the setting in
    STIG ID V-1000 would be marked to skip configuration when applied.
#>

configuration Example
{
    param
    (
        [parameter()]
        [string]
        $NodeName = 'localhost'
    )

    Import-DscResource -ModuleName PowerStigDsc

    Node $NodeName
    {
        WindowsFirewall EnterpriseFirewallPolicy
        {
            StigVersion = '1.6'
            SkipRule    = 'V-17415.a'
        }
    }
}

Example
```

### Apply the Windows Firewall STIG to a node, but skip the ManualRule

```PowerShell
<#
    Use embedded STIG data and skip an entire rule set.
    In this example, the Windows Firewall V1 R6 STIG is processed by the composite resource
    and merges in the default values for any settings that have a valid range.
    Additionally, a skip is added inline to the configuration, so that the setting for all
    STIG ID's with the type 'AuditPolicyRule' would be marked to skip configuration when applied.
#>
configuration Example
{
    param
    (
        [parameter()]
        [string]
        $NodeName = 'localhost'
    )

    Import-DscResource -ModuleName PowerStig

    Node $NodeName
    {
        WindowsFirewall EnterpriseFirewallPolicy
        {
            StigVersion  = '1.6'
            SkipRuleType = 'AuditPolicyRule'
        }
    }
}

Example
```
