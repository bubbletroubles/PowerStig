# WindowsDefender

A composite DSC resource to manage the Windows Defender STIG settings

## Requirements

Windows Defender installation

## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --------- | --------- | -------- | ----------- | -------------- |
| StigVersion | False | Version | The version of the Mozilla Firefox to apply and/or monitor | |
| Exception | False | Hashtable | A hashtable of @{StigId = @{Property = 'Value'}} that is injected into the STIG data and applied to the target node. |  |
| OrgSettings | False | PSObject | The path to the XML file that contains the local organizations preferred settings for STIG items that have allowable ranges. |  |
| SkipRule | False | String Array | The SkipRule Node is injected into the STIG data and applied to the target node. The title of STIG settings are tagged with the text 'Skip' to identify the skips to policy across the data center when you centralize DSC log collection. |  |
| SkipRuleType | False | String Array | All STIG rule IDs of the specified type are collected in an array and passed to the Skip-Rule function. Each rule follows the same process as the SkipRule parameter. |  |
| SkipRuleSeverity | False | String Array | All STIG rule Severity of the specified type are collected in an array and passed to the Skip-Rule function. Each rule follows the same process as the SkipRule parameter. | 'CAT_I', 'CAT_II', or 'CAT_III' |

## Examples

### Example 1

In this example, the Windows Defender STIG is processed by the composite resource

```powershell

Configuration Example
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
        WindowsDefender DefenderSettings
        {

        }
    }
}

Example

```
