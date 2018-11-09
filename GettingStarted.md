
PowerSTIG uses PowerShell Desired State Configuration (DSC) to audit and enforce individual STIG rules.
If you are not already famailair with DSC, please review the official documenation [here][DscOverview].
Once you are comfortable with DSC concepts, it's time to down the PowerSTIG module from the [PowerShell Gallery][PsGallery].
Using PowerShellGet in PowerShell 5.0 +, run the following command:

```powershell
Install-Module PowerSTIG -Scope CurrentUser
```

To confirm installation, run the below command and ensure you see the PowerSTIG modules available:

```PowerShell
Get-Module -Name PowerSTIG* -ListAvailable
```

Powershell will take it from there and automatically install all of the dependent modules for you.
Since PowerSTIG provides composite DSC resources, we have to ensure that all of the actual DSC resources that do the work are installed.
**NOTE:** You don't need to run as an admin to install the PowerShell modules, so the '-Scope CurrentUser' is used to install into your profile module path.
Once PowerShell has installed everything, you are ready to begin.
You can grab one of the examples from the composite resource links to the right and run it to compile your first STIG'd MOF.
From there you have a few options, depending on if you have any DSC infrastructure already in place.

1. [No existing DSC infrastructure][DscGettingStarted]
1. [Existing DSC infrastructure][DscOnPremises]
1. [Azure Automation Account][DscAzureAutomation]
1. [Azure Virtual Machine][DscAzureVirtualMachine]

## PowerSTIG Updates

As we release updates to PowerSTIG with new STIG's, you shouldn't need to update PowerSTIG you will need to update the PowerSTIG module.
PowerShell will take care of that for you as well.

## Integrating PowerSTIG

Integrating PowerSTIG into your environment is not too difficult once you establish a workflow.
This section is intended to help you with your initial integration.
If you run into any issues that are not outlined here, please request an update to the Wiki.

## No existing Configurations

With no existing configurations in your environment, things are a little easier and harder.
If you don't have any existing DSC infrastructure in place take a look at what you need to do in our [PowerSitDsc Getting Started Guide][DscGettingStarted].
That will get all of the pieces in place for you to start auditing your servers with a default configuration, but what happens when you audit a server that has been running forever and is not showing compliant?
The good news is that you now know what settings are not compliant, but now you need to decide how you want to resolve the non-compliant settings.

1. [Generate a list of non-complaint settings for each server](#audit-servers)
1. [Review any documentation that you have relating to policy exceptions](#review-exceptions)
1. [Review the non-compliant settings with your IA team to make sure they are tracking them](#ia-review)
1. [Review the non-compliant settings with your cyber team to make sure they are tracking them](#cyber-review)
1. [For each approved exceptions to policy, update your configuration with an exception](#document-exceptions)

### Audit Servers

To do the initial audit on your server(s), you can follow the [PowerSitDsc Getting Started Guide][DscGettingStarted].
The Test-DscConfiguration outputs its results to the $audit variable that we can look at closer here.

### Review Exceptions

### IA Review

### Cyber Review

### Document Exceptions

## Existing Configurations

---

If you have existing configurations that you would like to apply the STIG to, then you will need to take a few additional steps to ensure that you don't step on any of your existing work. This will vary based on how you have your LCM configured.

[home]:                     https://github.com/Microsoft/PowerStig/wiki/Home
[PsGallery]:                https://www.powershellgallery.com/packages/PowerSTIG
[DscOverview]:              https://docs.microsoft.com/en-us/powershell/dsc/overview
[DscGettingStarted]:        https://github.com/Microsoft/PowerStig/wiki/DscGettingStarted
[DscOnPremises]:            https://github.com/Microsoft/PowerStig/wiki/DscOnPremises
[DscAzureAutomation]:       https://docs.microsoft.com/en-us/azure/automation/automation-dsc-overview
[DscAzureVirtualMachine]:   https://docs.microsoft.com/en-us/azure/virtual-machines/extensions/dsc-overview
[examples]:                 https://github.com/Microsoft/PowerStig/tree/dev/Examples
[powerstig]:                https://github.com/Microsoft/PowerStig
