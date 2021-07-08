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
    default values for any settings that have a valid range. Get/Set-Content is used to remove
    Carriage Returns (CR) from the mof file, as Linux uses Line Feed (LF) for new lines.
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

$mof = UbuntuBaseLine -Output C:\dev
(Get-Content -Path $mof.FullName -Raw).Replace("`r`n","`n") | Set-Content -Path $mof.FullName -Encoding UTF8 -Force 
```

### Use PowerSTIG to generate a RHEL 7.x DSC mof

```PowerShell
<#
    Use the embedded STIG data with default range values to apply the most recent STIG settings.
    In this example, the composite resource gets the highest RHEL 7 STIG version file it can
    find locally generates an RHEL 7 mof file. The composite resource merges in the default values
    for any settings that have a valid range. Get/Set-Content is used to remove Carriage Returns (CR)
    from the mof file, as Linux uses Line Feed (LF) for new lines.
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

$mof = RHELBaseLine -Output C:\dev
(Get-Content -Path $mof.FullName -Raw).Replace("`r`n","`n") | Set-Content -Path $mof.FullName -Encoding UTF8 -Force 
```

## Known Limitations and Workarounds

### Mof Encoding and Carriage Return / Linefeed (Windows line termination sequence)

Windows uses "Carriage Return / Line Feed" (CRLF) for its line termination sequence, whereas Linux uses "Linefeed" (LF). When the configuration is generated on a Windows system using Windows PowerShell 5.1 the mof is UTF-16 encoded and using CRFL for line termination. To apply a PowerSTIG generated mof to a Linux target, the mof file should be encoded UTF-8 and have no CR in its line termination sequence. Using the example below, Get-Content and Set-Content is used to remove the CR line terminator and set UTF-8 encoding, so that the mof can be successfully used on a Linux Target.

```PowerShell
$mofPath = 'C:\Dev\localhost.mof'
(Get-Content -Path $mofPath -Raw).Replace("`r`n","`n") | Set-Content -Path $mofPath -Encoding UTF8 -Force
```

### Mof File Size Limitation

There is a known limitation with DSC for Linux where a mof size greater than 23 KB cannot be applied with StartDscConfiguration.py, i.e.:

```bash
sudo ./StartDscConfiguration.py –-configurationmof /tmp/localhost.mof
```

However, a workaround can be used to **manually apply** a PowerSTIG generated mof to a supported Linux based target following the steps outlined below:

1. Generate a mof using PowerSTIG with the RHEL or Ubuntu composites.
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
