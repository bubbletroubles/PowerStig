# IisServer

A composite DSC resource to manage the IIS Site STIG settings

## Requirements

None

## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --------- | --------- | -------- | ----------- | -------------- |
| IisVersion | True | String | The version of the IIS STIG to apply and monitor | 8.5,10.0 |
| WebSiteName | True | String | Name of the website(s) to target |  |
| WebAppPool | True | String | Name of the Application Pool to target |  |
| StigVersion | False | Version | Uses the OsVersion and OsRole to select the version of the STIG to apply and monitor. If this parameter is not provided, the most recent version of the STIG is automatically selected. | 1.1 |
| Exception | False | PSObject | A hashtable of @{StigId = @{Property = 'Value'}} that is injected into the STIG data and applied to the target node. |  |
| OrgSettings | False | PSObject | The path to the xml file that contains the local organizations preferred settings for STIG items that have allowable ranges. |  |
| SkipRule | False | PSObject | The SkipRule Node is injected into the STIG data and applied to the taget node. The title of STIG settings are tagged with the text 'Skip' to identify the skips to policy across the data center when you centralize DSC log collection. |  |
| SkipRuleType | False | PSObject | All STIG rule IDs of the specified type are collected in an array and passed to the Skip-Rule function. Each rule follows the same process as the SkipRule parameter. |  |

## Examples

### Apply the IIS Site STIG V1R1 to a node

```PowerShell
<#
    Use the embedded STIG data with default range values to apply the most recent STIG settings.
    In this example, the composite resource gets the highest IIS 10.0 Site STIG version
    file it can find locally and applies it to the server. The composite resource merges in the
    default values for any settings that have a valid range.
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
        IisSite BaseLine
        {
            IIsVersion   = '10.0'
            WebsiteName = 'Test'
            WebAppPool = 'TestPool'
        }
    }
}

Example
```
