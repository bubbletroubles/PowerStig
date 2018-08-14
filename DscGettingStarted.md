# No existing DSC infrastructure

If you are just getting started with PowerShell Desired State Configuration (DSC), please start with [overview](https://docs.microsoft.com/en-us/powershell/dsc/overview) documentation.
TL;DR You need to manually install the DSC resources we use in the composite on every host you are targeting.
To simplify that you can run the following script (as administrator) on your target host.

```powershell
(Get-Module PowerStigDsc -ListAvailable).RequiredModules | % {
   $PSItem | Install-Module -Force
}
```

**Note:** The -Scope switch is not used here because DSC runs as the system and that is why you needed to run the command as an admin.
Now that you have all of the resources on the target node, you can either apply the MOF or audit it against the target host.
The easiest option is to simply audit the server, so we'll use the default Windows server [example](https://github.com/Microsoft/PowerStigDsc/blob/dev/Examples/Sample_WindowsServer_Default.ps1).

```powershell
Push-Location $env:TEMP
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
Invoke-WebRequest -Uri 'https://raw.githubusercontent.com/Microsoft/PowerStigDsc/dev/Examples/Sample_WindowsServer_Default.ps1' -OutFile .\Sample_WindowsServer_Default.ps1
& .\Sample_WindowsServer_Default.ps1
Pop-Location
```

At this point, we have now compiled a MOF that has all* of the STIG settings automatically added.
We say all with a caveat, in that, not all STIG settings, lend themselves to automation, so they have been flagged as manual or documentation rules, but more on that later. You should have received a response similar to the following, indicating the MOF was compiled successfully.

```powershell
Directory: C:\Users\username\AppData\Local\Temp\Example

Mode                LastWriteTime         Length Name
----                -------------         ------ ----
-a----         8/6/2018   4:38 PM         457870 localhost.mof
```

Now we are ready to reach out to the server for an audit. Remember that DSC runs as the system, so you need to connect to the server as an administrator and run the following command.

```powershell
$audit = Test-DscConfiguration -ComputerName 'RemoteServerName' -ReferenceConfiguration "$env:TEMP\Example\localhost.mof"
```

This will kick the Local Configuration Manager (LCM) and tell it to use the MOF file to measure the computer's compliance.
There is quite a bit of work going on, so it will take a few minutes to complete, but once it is done, you will have a list of all the settings that are and are NOT compliance with the STIG settings.

You may bump into an issue with the size of the MOF file and PS remoting. If you get an error similar to the following, you need to update your MaxEnvelopeSizekb.

```powershell
VERBOSE: Perform operation 'Invoke CimMethod' with following parameters, ''methodName' = SendConfigurationApply,'className' = MSFT_DSCLocalConfigurationManager,'namespaceName' = root/Microsoft/Windows/DesiredStateConfiguration'.
The WinRM client sent a request to the remote WS-Management service and was notified that the request size exceeded the configured MaxEnvelopeSize quota.
```

To do that run the following command

```powershell
# Update the WSMAN MaxEnvelopeSizekb
Set-Item -Path WSMan:\localhost\MaxEnvelopeSizekb -Value 8192
```

If you get an error indicating that you network profile is Public, run this command

```powershell
# Get the name of the public profile
Get-NetConnectionProfile
# Update the InterfaceAlias parameter with the name of the profile from above
Set-NetConnectionProfile -InterfaceAlias 'Ethernet' -NetworkCategory Private
# Update the WSMAN MaxEnvelopeSizekb
Set-Item -Path WSMan:\localhost\MaxEnvelopeSizekb -Value 8192
```