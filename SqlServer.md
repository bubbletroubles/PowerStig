# SqlServer

A composite DSC resource to manage the SQL STIG settings

## Requirements

None

## Parameters

| Parameter | Attribute | DataType | Description | Allowed Values |
| --------- | --------- | -------- | ----------- | -------------- |
| SqlVersion | True | String | The version of SQL being used E.g. 'Server2012' | 2012 |
| SqlRole | True | String | There are two STIGs that cover the scope of SQL. SQL Instance covers each instance of SQL on a server SQL Database covers each Database within an Instance. | Database,Instance |
| StigVersion | False | Version | The version of the SQL STIG to apply and/or monitor | 1.16,1.17 |
| ServerInstance | True | String[] | The name of the SQL Instance that the STIG data will be applied to. To define a specific Instance you must use the following format: "ComputerName\InstanceName" If you want to use the default instance, you only need to use the hosting computer name. |  |
| Database | False | String[] | The Name of the database that you would like to be applied to. This parameter is only used for the SQL Database STIG. |  |
| Exception | False | PSObject | A hashtable of StigId=Value key pairs that are injected into the STIG data and applied to the target node. The title of STIG settings are tagged with the text â€˜Exceptionâ€™ to identify the exceptions to policy across the data center when you centralize DSC log collection. |  |
| OrgSettings | False | PSObject | The path to the xml file that contains the local organizations preferred settings for STIG items that have allowable ranges. |  |
| SkipRule | False | PSObject | The SkipRule Node is injected into the STIG data and applied to the taget node. The title of STIG settings are tagged with the text 'Skip' to identify the skips to policy across the data center when you centralize DSC log collection. |  |
| SkipRuleType | False | PSObject | All STIG rule IDs of the specified type are collected in an array and passed to the Skip-Rule function. Each rule follows the same process as the SkipRule parameter. |  |

## Examples

### Apply the latest SQL Server STIG to a node

```PowerShell
<#
    Use the embedded STIG data with default range values.
    In this example, the Windows SQL Server 2012 V1R17 STIG is processed by the
    composite resource and merges in the default values for any settings that have a valid range.
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

    Node localhost
    {
        SqlServer BaseLine 
        {
            SqlVersion     = '2012'
            SqlRole        = 'Instance'
            StigVersion    = '1.17'
            ServerInstance = 'ServerX\TestInstance'
        }
    }
}

Example
```

### Apply the SQL Server STIG to a node, but override the value of V-40942

```PowerShell
<#
    Use the embedded STIG data with default range values.
    In this example, the Windows SQL Server 2012 V1R17 STIG is processed by the
    composite resource and merges in the default values for any settings that have a valid range.
    Additionally, an exception is added inline
    to the configuration, so that the setting in STIG ID V-40942 would be over
    written with the 'GetScript'="SELECT name from sysdatabases where name like 'DefaultDataBase'".
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

    Node localhost
    {
        SqlServer BaseLine 
        {
            SqlVersion     = '2012'
            SqlRole        = 'Instance'
            StigVersion    = '1.17'
            ServerInstance = 'ServerX\TestInstance'
            Exception      = @{'V-40942'= @{'GetScript'="SELECT name from sysdatabases where name like 'DefaultDataBase'"} }
        }
    }
}

Example
```
### Apply the Windows SQL Server STIG to a node, but skip SqlScriptQueryRule

```PowerShell
<#
    Use the embedded STIG data with default range values.
    In this example, the Windows SQL Server 2012 V1R16 STIG is processed by the
    composite resource and merges in the default values for any settings that have a valid range.
    Additionally, a skip is added inline to the configuration, so that the setting for all
    STIG ID's with the type 'SqlScriptQueryRule' would be marked to skip configuration when applied.
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

    Node localhost
    {
        SqlServer BaseLine 
        {
            SqlVersion     = '2012'
            SqlRole        = 'Instance'
            StigVersion    = '1.16'
            ServerInstance = 'ServerX\TestInstance'
            SkipRuleType   = 'SqlScriptQueryRule'
        }
    }
}

Example
```
