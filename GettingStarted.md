
PowerSTIG uses PowerShell Desired State Configuration (DSC) to audit and enforce individual STIG rules.
If you are not already familiar with DSC, please review the official documentation [here][DscOverview].
Once you are comfortable with DSC concepts, it's time to download the PowerSTIG module from the [PowerShell Gallery][PsGallery].
Using PowerShellGet in PowerShell 5.0 +, run the following command:

**NOTE:** You **don't** need to run as an admin to install the modules.
The '-Scope CurrentUser' is used to install into your profile module path.

```powershell
Install-Module PowerSTIG -Scope CurrentUser
```

PowerShell will take it from there and automatically install PowerSTIG and all the dependent modules for you.
Since PowerSTIG provides composite DSC resources, we must ensure that all the DSC resources that do the actual work are installed.
Once PowerShell has installed everything, you are ready to begin.
You can grab one of the examples from the composite resource links to the right and run it to compile your first STIG'd MOF.
Once you have a compiled MOF, you can start your initial audit.
Since we are using standard DSC components, we can take advantage of all the different DSC infrastructure options.

1. [No DSC infrastructure][DscGettingStarted]
1. [On-premises DSC infrastructure (Pull Server)][DscOnPremises]
1. [Azure Automation DSC][DscAzureAutomation]
1. [Azure Virtual Machine extension][DscAzureVirtualMachine]

## Integrating PowerSTIG

Integrating PowerSTIG into your environment is not too difficult once you establish a workflow.
This section is intended to help you with your initial integration.
If you run into any issues that are not outlined here, please request an update to the wiki.
If this is your first foray into PowerShell DSC, things are a little easier and harder at the same time.
If you don't have any existing DSC infrastructure in place take a look at what you need to do in our [DSC Getting Started Guide][DscGettingStarted].
That will put all the pieces in place for you to start auditing a server with a default configuration.
As you scale out to multiple machines you will really want to establish a pull server to store the DSC resources on.
This will greatly simply your life going forward.

## A basic workflow

For the purpose of this guide, we will be applying the Widows Server 2012 R2 MemberServer 2.12 STIG.
All the resources work exactly the same way, you just change the names and version numbers.

1. [Create organizational settings file (one time)](#organizational-settings)
1. [Deploy DSC Resources to target node (for each node)](#deploy-dsc-resources)
1. [Generate a list of non-complaint settings for each server](#audit-servers)
1. [Review any documentation that you have relating to policy exceptions](#review-exceptions)
1. [Review the non-compliant settings with your IA team to make sure they are tracking them](#ia-review)
1. [Review the non-compliant settings with your cyber team to make sure they are tracking them](#cyber-review)
1. [For each approved exceptions to policy, update your configuration with an exception](#document-exceptions)

### Organizational Settings

Some STIG's contain rules that allow for a range of valid values.
DSC doesn't like to guess what you want, so you need to provide a specific value.
An organizational setting allows you to define a specific value (within the valid range) for your environment.
For now, you can copy the default organizational settings file from the module and update it with your local values.
Here is how you can setup your organizational settings file.

1. Open the PowerSTIG module in Windows explorer and navigate to the folder StigData\Processed.
    1. Inside of that directory are all for the rule objects that have been extracted from the xccdf files.
    1. The default organizational settings for Server 2012 R2 MemberServer 2.12 STIG will be stored in Windows-2012R2-MS-2.12.org.default.xml.
    1. We will add a function to make this easier in the future, but for now it's a manual file copy.
1. Copy that file to a central location and remove the .default from the name or replace it with something meaningful to you.
    1. It's important to use a unique name because an updated STIG may have new org settings, so you will want to keep the version numbers.
1. Open the organizational settings file and notice that there is an XML element for each rule Id that has an allowable range
    1. Also notice that there is a comment above each rule to guide your decision.
    1. That test string is executed against your org setting when you compile the MOF.
    1. If the value you provide fails that test, the configuration will throw an error.
1. Once you have all your local setting updated, save and close the file.
1. Get the full path to the file and add it to your configuration.

Your PowerSTIG configuration script block should look something like this:

```powershell
WindowsServer STIGBaseLine
{
    OsVersion   = '2012R2'
    OsRole      = 'MS'
    StigVersion = '2.12'
    OrgSettings = "\\Share\OrgSettings\Windows-2012R2-MS-2.12.xml"
}
```

Once this is done all your configurations for the enterprise should reference this single organizational settings file.
This eliminates duplicate efforts and gives IA and the Cyber teams awareness and opportunity to comment on settings.

### Deploy DSC Resources

All the DSC Resources that the PowerSTIG composite resources depend on need to be deployed to the node(s).
You can do this one of three ways.

1. Manually copy the DSC resource files to 'C:\Program Files\WindowsPowerShell\Modules'.
    1. The simplest but does not scale.
1. Configure the target node LCM to use a [ResourceRepositoryShare][ResourceRepository] block. For more info see [Setting up a DSC SMB pull server][pullserversmb].
1. Configure the target node LCM to use a [ResourceRepositoryWeb][ResourceRepository] block. For more info see [DSC pull service in Windows Server][pullserverhttp].

In this guide we are just going to copy the resources over in a semi-automatic fashion.
One thing to note here is that the PowerSTIG module is not needed on the target node.
PowerSTIG just does all the controlling and data manipulation based on the parameters you provide.
The MOF that it outputs only references the DSC resources that are defined as required modules.
We can simplify the copy process by using PowerShell remoting.

Since PS 5 is required for the module to run, we will assume here that you have PowerShell 5 deployed everywhere.
If that is not the case, stop here and up upgrade your PowerShell.
Just kidding, but seriously, start your change process now to get it deployed everywhere possible.
Now that you have PS 5.1 deployed everywhere, we can copy all the resources that were installed to your profile onto your remote servers.

**###CONTINUE HERE**

```powershell
(Get-Module PowerStig -ListAvailable).RequiredModules
```

### Audit Servers

To do the initial audit on your server(s), you can follow the [PowerSTIG Getting Started Guide][DscGettingStarted].
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
[DscOnPremises]:            https://docs.microsoft.com/en-us/powershell/dsc/pullserver
[DscAzureAutomation]:       https://docs.microsoft.com/en-us/azure/automation/automation-dsc-overview
[DscAzureVirtualMachine]:   https://docs.microsoft.com/en-us/azure/virtual-machines/extensions/dsc-overview
[examples]:                 https://github.com/Microsoft/PowerStig/tree/dev/Examples
[powerstig]:                https://github.com/Microsoft/PowerStig
[ResourceRepository]:       https://docs.microsoft.com/en-us/powershell/dsc/metaconfig#resource-server-blocks
[pullserversmb]:            https://docs.microsoft.com/en-us/powershell/dsc/pullserversmb
[pullserverhttp]:           https://docs.microsoft.com/en-us/powershell/dsc/pullserver

