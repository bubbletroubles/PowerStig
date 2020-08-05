# FireFox

A composite DSC resource to manage the FireFox STIG settings

## Requirements

Mozilla Firefox installation

## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --------- | --------- | -------- | ----------- | -------------- |
| InstallDirectory | True | String | The path to the install directory of FireFox | |
| StigVersion | False | Version | The version of the Mozilla Firefox to apply and/or monitor | |
| Exception | False | PSObject | A hashtable of @{StigId = @{Property = 'Value'}} that is injected into the STIG data and applied to the target node. |  |
| OrgSettings | False | PSObject | The path to the XML file that contains the local organizations preferred settings for STIG items that have allowable ranges. |  |
| SkipRule | False | PSObject | The SkipRule Node is injected into the STIG data and applied to the target node. The title of STIG settings are tagged with the text 'Skip' to identify the skips to policy across the data center when you centralize DSC log collection. |  |
| SkipRuleType | False | PSObject | All STIG rule IDs of the specified type are collected in an array and passed to the Skip-Rule function. Each rule follows the same process as the SkipRule parameter. |  |

## Examples

### Example 1

In this example, the FireFox STIG is processed by the composite resource

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
        FireFox FireFoxSettings
        {
            StigVersion = '4.29'
            InstallDirectory = 'C:\Program Files\Mozilla Firefox'
        }
    }
}

Example

```
