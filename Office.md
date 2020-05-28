# Microsoft Office

A composite DSC resource to manage the Microsoft Office STIG settings

## Requirements

None

## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --------- | --------- | -------- | ----------- | -------------- |
| Office | True | String | The version of the Office STIG to apply and monitor | Excel2013, Office2013, PowerPoint2013, Word2013, System2013, Visio2013, Excel2016, Office2016, PowerPoint2016, Word2016, System2016, Visio2016 |
| StigVersion | False | Version | The version of the Office STIG to apply and/or monitor | 1.6, 1.7, 1.12 |
| Exception | False | PSObject | A hashtable of @{StigId = @{Property = 'Value'}} that is injected into the STIG data and applied to the target node. |  |
| OrgSettings | False | PSObject | The path to the XML file that contains the local organizations preferred settings for STIG items that have allowable ranges. |  |
| SkipRule | False | PSObject | The SkipRule Node is injected into the STIG data and applied to the target node. The title of STIG settings are tagged with the text 'Skip' to identify the skips to policy across the data center when you centralize DSC log collection. |  |
| SkipRuleType | False | PSObject | All STIG rule IDs of the specified type are collected in an array and passed to the Skip-Rule function. Each rule follows the same process as the SkipRule parameter. |  |

## Examples

### Apply the Office STIG to a node

```PowerShell
<#
    In this example, the Outlook 2013 STIG V1R12 is processed by the Office composite resource.
#>

Configuration Office2013
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
        Office Outlook2013Settings
        {
            OfficeApp = 'Outlook2013'
            Stigversion    = '1.12'
        }
    }
}
Office2013
```
