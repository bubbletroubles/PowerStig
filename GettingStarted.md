
PowerSTIG uses PowerShell Desired State Configuration (DSC) to audit and enforce individual STIG rules.
If you are not already familiar with DSC, please review the official documentation [here][DscOverview].
Once you are comfortable with DSC concepts, it's time to download the PowerSTIG module from the [PowerShell Gallery][PsGallery].
Using PowerShellGet in PowerShell 5.0 +, run the following command:

**NOTE:** You **don't** need to run as an admin to install the modules.
'-Scope CurrentUser' is used to install into your profile module path.

```powershell
Install-Module PowerSTIG -Scope CurrentUser
```

PowerShell will take it from there and automatically install PowerSTIG and all the dependent modules for you.
Once PowerSTIG is installed, you can get an idea for the STIG coverage that we currently have published.

```powershell
C:\WINDOWS\system32> Get-DscResource -Module PowerSTIG

ImplementedAs   Name                      ModuleName                     Version    Properties
-------------   ----                      ----------                     -------    ----------
Composite       Browser                   PowerSTIG                      2.2.0.0    {DependsOn, PsDscRunAsCredential...
Composite       DotNetFramework           PowerSTIG                      2.2.0.0    {DependsOn, PsDscRunAsCredential...
Composite       FireFox                   PowerSTIG                      2.2.0.0    {DependsOn, PsDscRunAsCredential...
Composite       IisServer                 PowerSTIG                      2.2.0.0    {DependsOn, PsDscRunAsCredential...
Composite       IisSite                   PowerSTIG                      2.2.0.0    {DependsOn, PsDscRunAsCredential...
Composite       Office                    PowerSTIG                      2.2.0.0    {DependsOn, PsDscRunAsCredential...
Composite       OracleJRE                 PowerSTIG                      2.2.0.0    {DependsOn, PsDscRunAsCredential...
Composite       SqlServer                 PowerSTIG                      2.2.0.0    {DependsOn, PsDscRunAsCredential...
Composite       WindowsClient             PowerSTIG                      2.2.0.0    {DependsOn, PsDscRunAsCredential...
Composite       WindowsDnsServer          PowerSTIG                      2.2.0.0    {DependsOn, PsDscRunAsCredential...
Composite       WindowsFirewall           PowerSTIG                      2.2.0.0    {DependsOn, PsDscRunAsCredential...
Composite       WindowsServer             PowerSTIG                      2.2.0.0    {DependsOn, PsDscRunAsCredential...
```

Since PowerSTIG provides a wide range of composite DSC resources, we must ensure that all the DSC resources that do the actual work are installed.
This makes the download a little bigger, but alos simpler becasue you will always have everythign you need, in theory.
Once PowerShell has installed everything, you are ready to begin.
You can grab one of the examples from the composite resource links to the right and run it to compile your first STIG'd MOF.
Once you have a compiled MOF, you can start an initial audit on a server or workstation.
Since we are using standard DSC components, we can take advantage of the different DSC infrastructure options.

1. [No DSC infrastructure (Manual Push)][DscGettingStarted]
1. [On-premises DSC infrastructure (Pull Server)][DscOnPremises]
1. [Azure Automation DSC][DscAzureAutomation]
1. [Azure Virtual Machine extension][DscAzureVirtualMachine]

## Integrating PowerSTIG

Integrating PowerSTIG into your environment is not too difficult once you establish a workflow that works for you.
If you are already using DSC, you can skip over this or compare it to how you are currently operating and let us know if we can add anything to make it easier for everyone.
DSC is a DevOps tool and by extension, so is PowerSTIG.
This page is intended to help you with initial PowerSTIG integration.
There is a lot of great information available about integrating DSC into your environemnt, so we won't rehash much if any of that.
If you run into any issues that are not outlined or unclear, please request an update to the wiki.
If this is your first foray into PowerShell DSC, things are a little easier and harder at the same time.
If you don't have any existing DSC infrastructure in place take a look at what you need to do in our [DSC Getting Started Guide][DscGettingStarted].
That will put all the pieces in place for you to start auditing a server with a default configuration.
As you scale out to multiple machines, you will really want to establish a pull server to store the DSC resources and centralize reporting.
This will greatly simply your life going forward as you add more complex DSC configurations with PowerSTIG as a single resource entry.

## A basic workflow

For the purpose of this guide, we will be applying the Widows Server 2012 R2 MemberServer 2.12 STIG.
Over time this version of the STIG and Windows will age out of the project, but all resources work the same way.
You just change the names and version numbers.
You can start with these steps to get a feel for how you want to integrate PowerSTIG into your workstream.
It can seem over whelming at first, but it is broken into multiple steps to simplify each one and make it more repeatable.

1. [Copy/Create organizational settings file (one time)](#organizational-settings)
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
1. Open the organizational settings file and notice that there is an XML element for each rule Id that has an allowable range.
    1. Also notice that there is a comment above each rule to guide your decision.
    1. That test string is executed against your org setting when you compile the MOF.
    1. If the value you provide fails that test, the configuration will throw an error.
1. Once you have all your local setting updated, save and close the file.
1. Get the full path to the file and add it to your configuration.

Your PowerSTIG resource script block in your configuration should look something like this:

```powershell
WindowsServer STIGBaseLine
{
    OsVersion   = '2012R2'
    OsRole      = 'MS'
    StigVersion = '2.12'
    OrgSettings = "\\Share\OrgSettings\Windows-2012R2-MS-2.12.xml"
}
```

Once this is done all your configurations for the enterprise should reference this single organizational settings file where possible.
This eliminates duplicate efforts and gives the IA and Cyber teams awareness and opportunity to comment on settings.

### Deploy DSC Resources

All the DSC Resources that the PowerSTIG composite resources depend on need to be deployed to the node(s).
You can do this one of three ways.

1. Manually copy the DSC resource files to 'C:\Program Files\WindowsPowerShell\Modules'.
    1. The simplest but does not scale well without custom automation.
1. Configure the target node LCM to use a [ResourceRepositoryShare][ResourceRepository] block. For more info see [Setting up a DSC SMB pull server][pullserversmb].
1. Configure the target node LCM to use a [ResourceRepositoryWeb][ResourceRepository] block. For more info see [DSC pull service in Windows Server][pullserverhttp].

For now, just manually copy the DSC resources from the computer you installed PowerSTIG on to 'C:\Program Files\WindowsPowerShell\Modules' of the target node.
You can use the following command to get the list of resources you need to copy.

```powershell
(Get-Module PowerStig -ListAvailable).RequiredModules
```

There are many ways to copy the files over so we won't get into that, but if you aren't using PowerShell remoting, you should give it a try.
Hint, [Copy -ToSession](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/copy-item?view=powershell-6#examples) is AWESOME.
One thing to note here is that the PowerSTIG module is not needed on the target node.
PowerSTIG just does all the controlling and data manipulation based on the parameters you provide.
The MOF that it created only references the DSC resources that are defined as required modules.
Now that you have all the resources copied over, it's time to audit the server.

### Audit Servers

Before you can audit a server, you need to run a configuration with PowerSTIG defined to generate a MOF.
The following configuration assumes that you have created a central organizational settings file.
Update the OrgSettings path to point to your local file.
Additionally, if you are running the configuration from a domain joined machine, you can skip the Domain and Forest Name parameters.
If you are not on a domain joined machine or are targeting another domain, remove the comments and add your desired names.
Domain names are required to resolve the friendly names of security principals when the MOF is applied to the target node.

```powershell
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
            OsVersion   = '2012R2'
            OsRole      = 'MS'
            StigVersion = '2.12'
            OrgSettings = "\\Share\OrgSettings\Windows-2012R2-MS-2.12.xml"
            # DomainName  = 'your.domain'
            # ForestName  = 'your.domin'
        }
    }
}

Example -OutputPath C:\dev
```

After running this configuration, you should have a file C:\dev\localhost.mof.
The Test-DscConfiguration cmdlet is the easiest way to get started auditing your first server using the newly created mof.
Test-DscConfiguration calls into the Local Configuration Manager (LCM), which runs as the system, so admin rights are required.
Open a PowerShell command prompt as admin and Run the following command to get the list of STIG settings and their compliance status.

```powershell
$audit = Test-DscConfiguration -ReferenceConfiguration C:\Dev\localhost.mof
```

### Review Exceptions

Congrats, you have just audited a server for STIG compliance with DSC and PowerSTIG.
Now it's time to dig into the results that are stored in the audit variable.
Looking at the contents of the DSC results in the audit variable returns some interesting information.
First is the far-right column which indicates the overall state.
If any of the items in the MOF are not compliant, then the InDesiredState flag is set to false.
Even more interesting is that DSC gives you a separate list of the settings that are not complaint.

```powershell
C:\WINDOWS\system32> $audit

PSComputerName  ResourcesInDesiredState        ResourcesNotInDesiredState     InDesiredState
--------------  -----------------------        --------------------------     --------------
localhost       {[AuditPolicySubcategory][V... {[AuditPolicySubcategory][V... False
```

Depending on where and how you obtained your OS image, the ResourcesNotInDesiredState list could be quite large.
If you look at $audit.Resources**Not**InDesiredState you will have a list of settings that are not compliant.
Here is an example of a non-compliant setting.

```powershell
C:\WINDOWS\system32> $audit.ResourcesNotInDesiredState[0]

ConfigurationName    : Example
DependsOn            :
ModuleName           : AuditPolicyDsc
ModuleVersion        : 1.2.0.0
PsDscRunAsCredential :
ResourceId           : [AuditPolicySubcategory][V-26529][medium][Audit - Credential Validation - Success]::[WindowsServer]BaseLine
SourceInfo           : C:\Program Files\WindowsPowerShell\Modules\PowerSTIG\2.2.0.0\DSCResources\Resources\wind
                       ows.AuditPolicySubcategory.ps1::8::5::AuditPolicySubcategory
DurationInSeconds    : 0.16
Error                :
FinalState           :
InDesiredState       : False
InitialState         :
InstanceName         : [V-26529[medium][Audit - Credential Validation - Success]::[WindowsServer]BaseLine
RebootRequested      : False
ResourceName         : AuditPolicySubcategory
StartDate            : 11/12/2018 1:08:36 PM
StateChanged         : False
PSComputerName       : localhost
```

At this point you have a list of all the rules and the compliance status of each one.
You should work through your list to determine why each setting is not compliant.
**NOTE** If you find any settings that conflict with another reporting mechanism. i.e. SCAP, etc.
Please open an issue describing the discrepancy so that we can address it and get a fix published as soon as possible.
Occasionally we encounter an issue with the individual resource not correctly testing or setting a property.
You can open an issue with us and we can work with the resource owner if you don't want to.
Either way let us knwo if you bump into any situations where DSC says a setting is not complaint, when it is.
It's at this point that many people realize the amount of work that is ahead of them when they multiple this time the number of servers they own.
You might be tempted to give up and stick your head back in the sand and that's understandable
The reality is that there is a big reward for the upfront work.
Future you will be grateful for finally identifying technical debt in your enterprise.
If you are not familiar with the term technical debt, just know that every time you make undocumented changes, you are accumulating it (exponentially).
Putting all your SITG knowledge for each server into a DSC configuration with PowerSTIG allows you to pay that debt down and focus on optimizing your services.
What that really means in practice is that when you need to make a change to a server in the future, you won't have to guess if it is STIG compliant as new versions of the STIG are released.
Secondly and more beneficial is that the overhead of a lab goes to near zero since you can quickly build a copy of your production server using your DSC configuration and then tear it down when your testing is complete.
You can test changes to your service or a new version of the STIG and then move the updated configuration into production once you confirm it doesn't cause any issues.
While outside the scope of this wiki, have a look a [PesterOVF](https://github.com/PowerShell/Operation-Validation-Framework) if you are not already aware of it.
Automating your service testing will supercharge your release cadence.

### IA Review

As you work through your list of non-compliant settings you are all but guaranteed to come across a STIG rule that cannot be enforced on a server.
There is a reason that all the STIG's come with a flashing disclaimer to thoroughly test before pushing the big red button to deploy all of the settings.
This is also the precise point in time when many admins get their future self into trouble (Technical Debt).
You add a manual change, script, or OU based GPO to override a higher-level setting.
You may or may not have documented, or at the very least, you'll do it "later".
Then then phone rings, your boss sends you a message, or your just hungry and will do it after lunch......
The server is now functional, but you have introduced an untracked risk with no mitigations in place if necessary.

By working with your local IA team, you can identify and automatically document your exceptions to a STIG rule in your DSC script.
In the following example we have updated the previous configuration to override rule V-1075 with a value of 1.
The STIG says it is supposed to be 0, but that causes our application on the server to fail.

```powershell
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
            OsVersion   = '2012R2'
            OsRole      = 'MS'
            StigVersion = '2.12'
            OrgSettings = "\\Share\OrgSettings\Windows-2012R2-MS-2.12.xml"
            Exception   = @{'V-1075' = @{ValueData=1}}
        }
    }
}

Example -OutputPath C:\dev
```

This configuration does two things that are interesting.

1. The data is updated in the MOF the next time we run it, so DSC will report that 1 is compliant and 0 is not compliant (Technical Debt is paid).
1. The title for this rule is updated with '[Exception]', so when we look at the DSC results, we can filter out any exceptions to policy.
    1. When you scale this out to your entire datacenter, it's powerful to be able generate this list almost instantly.

This empowers IA to better support you and the rest of the organization by verifying exceptions are properly documented in the RMF.

### Cyber Review

If you have a separate cyber division, then this exception process also gives them visibility into the overall security posture of the enterprise.
Mitigating threats and risks is only possible if you are aware, they exist.
By providing DSC result data to the cyber team, you allow them to proactively determine if additional mitigations need to be put into place due to a STIG rule exception.
Continuing on the data driven operations theme, if the cyber team defines a mitigation for a specific exception, they can now look at all of the nodes in the datacenter and ensure their DSC configurations have the same mitigation in place.

### Document Exceptions

Documentation is really the hard part because not very many people like to do it and it is the last thing to get done, if at all.
You can have simple excel file or a full blown CMDB, the requirement is the same.
Keep track of every change and configuration item in every server.
Exceptions to policy must be authorized (in writing) and many of those exceptions have a limited lifespan.
They either need to be reapproved on a recurring basis or removed in the future for whatever reason.
To get an idea on how you might take advantage of PowerSTIG and DSC reporting, consider the following scenario.

You need to quickly validate the status of a server to ensure that any exceptions to the security policy are properly documented with IA and mitigated with Cyber.
Using the MOF that was previously generated above, we can run Test-DscConfiguration.

```powershell
$audit = Test-DscConfiguration -ReferenceConfiguration C:\dev\localhost.mof
```

Then we can dig into the results to look for any exceptions that require documentation.

```powershell
($audit.ResourcesNotInDesiredState + $audit.ResourcesInDesiredState) | ? ResourceId -match \[Exception\]
```

A quick filter of the results looking for the Exception token in the ResourceID shows that this server should have some exception paperwork filed with IA.

```powershell
ConfigurationName    : Example
DependsOn            :
ModuleName           : xPSDesiredStateConfiguration
ModuleVersion        : 8.3.0.0
PsDscRunAsCredential :
ResourceId           : [xRegistry][V-1075][medium][[Exception]Display Shutdown Button]::[WindowsServer]BaseLine
SourceInfo           : C:\Program Files\WindowsPowerShell\Modules\PowerSTIG\2.2.0.0\DSCResources\Resources\wind
                       ows.xRegistry.ps1::8::5::xRegistry
DurationInSeconds    : 0.16
Error                :
FinalState           :
InDesiredState       : True
InitialState         :
InstanceName         : [V-1075[medium][[Exception]Display Shutdown Button]::[WindowsServer]BaseLine
RebootRequested      : False
ResourceName         : xRegistry
StartDate            : 11/12/2018 1:08:36 PM
StateChanged         : False
PSComputerName       : localhost
```

What is interesting is that once you scale out your deployment, you can pump the DSC report data to a data warehouse or similar.
Then the IA and Cyber teams are empowered to operate in partnership with you through the data and not additional tasks or data calls.
In your CMDB you can provide a link to the signed exception authorization and then let your imagination run wild with automation possibilities.

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
