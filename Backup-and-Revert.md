# Documentation

**Applies to: PowerStig 4.10 or later**

Functionality was added to include the ability to Backup system STIG settings to CSV and Revert to those settings if needed. The product will backup and revert most settings, but there a small number that will not revert, due to limitations with the our resources.

## Steps to use new functionality

1. Install the latest version of PowerSTIG (4.10.0 or newer)
2. Backup STIG settings based on a target STIG
```Powershell
    Backup-StigSettings -StigName "WindowsServer-2019-MS-2.2.xml"
```
3. Compile your PowerSTIG Configuration
```PowerShell
<#
    Use the embedded STIG data with default range values to apply the most recent STIG settings.
    In this example, the composite resource gets the highest 2012 R2 member server STIG version
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
        WindowsServer BaseLine
        {
            OsVersion   = '2019'
            OsRole      = 'MS'
        }
    }
}

Example
```
4. Apply your PowerSTIG Configuration
```Powershell
Start-DscConfiguration .\Example -w -v -f
```
5. Revert your system state to the PowerSTIG Backup
```Powershell
Restore-StigSettings -StigName "WindowsServer-2019-MS-2.2.xml"
```
