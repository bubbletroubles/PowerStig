# Documentation

**Applies to: PowerStig 4.10.0 or later**

Functionality was added to include the ability to Backup system STIG settings to CSV and Revert to those settings if needed. The solution will backup and revert most settings, however there is a small number of settings that will not be backed up at this time, due to limitations with one of our dependent resources.

**Note**

With this new functionality you can "backup" a reference pre-PowerSTIG system, then restore the backup to any number of target systems. This could be helpful if you apply security settings to many systems, without a pre-existing backup in place and something breaks.

## Steps to use the new backup/restore functionality

1. Install the latest version of PowerSTIG (4.10.0 or newer)
2. Backup STIG settings based on a target STIG
```Powershell
    Backup-StigSettings -BackupLocation $ENV:TEMP -StigName "WindowsServer-2019-MS-2.2.xml"
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
