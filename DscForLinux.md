# Desired State Configuration for Linux

Use DSC for Linux to apply PowerSTIG configurations to Linux

## Requirements

- Windows 10/2016/2019 (Authoring System)
  - PowerShell v5.1 
    - PowerShell v6 or v7 is not currently supported for compiling a DSC configuration mof with PowerSTIG
  - PowerSTIG v4.9 or greater on a Windows Based Authoring System (DSC Configuration is compiled on a Windows System)
- Linux Target
  - [Desired State Configuration for Linux](https://docs.microsoft.com/en-us/powershell/scripting/dsc/getting-started/lnxGettingStarted)
  - [Open Management Infrastructure (OMI)](https://github.com/Microsoft/omi)

## Supported Linux Distributions

- Red Hat Enterprise Linux 7
- Canonical Ubuntu 18.04

## PowerSTIG Linux Configuration Examples

### Use PowerSTIG to generate an Ubuntu 18.04 DSC mof

```PowerShell
<#
    Use the embedded STIG data with default range values to apply the most recent STIG settings.
    In this example, the composite resource gets the highest Ubuntu 18.04 STIG version file it
    can find locally generates an Ubuntu 18.04 mof file. The composite resource merges in the
    default values for any settings that have a valid range.
#>
configuration UbuntuBaseLine
{
   Import-DscResource -ModuleName PowerSTIG

   Node 'localhost'
   {
      Ubuntu Baseline
      {
         OsVersion = '18.04'
      }
   }
}

UbuntuBaseLine -Output C:\dev
```

### Use PowerSTIG to generate a RHEL 7.x DSC mof

```PowerShell
<#
    Use the embedded STIG data with default range values to apply the most recent STIG settings.
    In this example, the composite resource gets the highest RHEL 7 STIG version file it can
    find locally generates an RHEL 7 mof file. The composite resource merges in the default values
    for any settings that have a valid range.
#>
configuration RHELBaseLine
{
   Import-DscResource -ModuleName PowerSTIG

   Node 'localhost'
   {
      RHEL Baseline
      {
         OsVersion = '7'
      }
   }
}

RHELBaseLine -Output C:\dev
```

## Known Limitations and Work Around

### Mof File Size Limitation

There is a known limitation with DSC for Linux where a mof size greater than 23 KB cannot be applied with StartDscConfiguration.py, i.e.:

```sudo ./StartDscConfiguration.py –-configurationmof /tmp/localhost.mof```

However, a workaround can be used to **manually apply** a PowerSTIG generated mof to a supported Linux based target following the steps outlined below:

1. Generate a mof using PowerSTIG with the Linux composite.
1. Using the mof generated in step one, copy the mof to /etc/opt/omi/conf/dsc/configuration/ as Pending.mof, please note the capitalization of the letter "P".
1. Register the DSC on the machine to create a PUSH mode MetaConfig:
    1. ```sudo /opt/microsoft/dsc/Scripts/Register.py --RefreshMode Push --ConfigurationMode ApplyAndAutoCorrect```
1. Invoke the PerformRequiredConfigurationChecks manually on the machine. This will trigger the DSC engine and the mof will be attempted to apply:
    1. ```sudo /opt/microsoft/dsc/Scripts/PerformRequiredConfigurationChecks.py```
1. The DSC engine will use **/etc/opt/omi/conf/dsc/configuration/Pending.mof** and then try to apply it. If the mof is successfully applied then it will be moved to Current.mof state.

#### Example Bash Script to Apply PowerSTIG Generated Mof

```bash
# copy or move the generated mof file to the correct location, noting the capital "P".
mv ./localhost.mof /etc/opt/omi/conf/dsc/configuration/Pending.mof
# use Register.py to configure the LCM as Push and ApplyOnly
/opt/microsoft/dsc/Scripts/Register.py --RefreshMode Push --ConfigurationMode ApplyOnly
# use PerformRequiredConfigurationChecks.py to apply the "Pending.mof" to the target machine
/opt/microsoft/dsc/Scripts/PerformRequiredConfigurationChecks.py
```

### Reporting Compliance Information

DSC resource specific compliance reporting will not work correctly due to the known limitation referenced above. Based on testing, the following DSC for Linux scripts will not work correctly when used with a PowerSTIG generated mof:

- GetDscConfiguration.py
- StartDscConfiguration.py
- TestDscConfiguration.py
