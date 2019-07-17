# Browser

A composite DSC resource to manage the Browser STIG settings

## Requirements

None

## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --------- | --------- | -------- | ----------- | -------------- |
| BrowserVersion | True | Int | The version of the Browser STIG to apply and monitor | IE11 |
| StigVersion | False | Version | The version of the Windows Server DNS STIG to apply and/or monitor | 1.13,1.15 |
| Exception | False | PSObject | A hash table of StigId=Value key pairs that are injected into the STIG data and applied to the target node. The title of STIG setting is tagged with the text â€˜Exceptionâ€™ to identify the exceptions to policy across the data center when you centralize DSC log collection. |  |
| OrgSettings | False | PSObject | The path to the XML file that contains the local organizations preferred settings for STIG items that have allowable ranges. |  |
| SkipRule | False | PSObject | The SkipRule Node is injected into the STIG data and applied to the target node. The title of STIG settings are tagged with the text 'Skip' to identify the skips to policy across the data center when you centralize DSC log collection. |  |
| SkipRuleType | False | PSObject | All STIG rule IDs of the specified type are collected in an array and passed to the Skip-Rule function. Each rule follows the same process as the SkipRule parameter. |  |

## Examples

### Example 1

In this example, the Internet Explorer 11 STIG is processed by the composite resource

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
        InternetExplorer InternetExplorerSettings
        {
            BrowserVersion = '11'
            Stigversion    = '1.17'
        }
    }
}

Example

```
