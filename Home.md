# Welcome to PowerSTIG

PowerSTIG is a project to aid customers that want or need to comply with DISA STIG's.

NOTE: PowerSTIG is currently only compatible with PowerShell v5

If you are interested in contributing to PowerSTIG, please go [here][Contributing].

If you are interested in how to use PowerSTIG please go [here][GettingStarted].

If you are interested in why you might want to use PowerSTIG, keep reading.

Primarily PowerSTIG uses [PowerShell Desired State Configuration (DSC)](https://docs.microsoft.com/en-us/powershell/scripting/dsc/overview/overview?view=powershell-5.1) to audit and enforce individual STIG rules.
Beyond configuration item enforcement and auditing, we maintain the rule metadata i.e. Rule ID, Severity, etc.
The compliance reporting in DSC combined the STIG rule metadata enables a server to self-report compliance.
Additionally, we can use the DSC compliance results to automatically create pre-filled STIG viewer checklists.
There is a DSC composite resource for each STIG technology such as Windows Server, IIS Server, Firefox, etc.
This is done to align to how DISA publishes individual STIG's and make determining what STIGs are applied easier for admins.
This is especially important when multiple STIG's are applied to a server.
The STIG rules themselves are originally provided in the standard xccdf file format.
The implementation details of each rule in the xccdf are not provided in a format that DSC can directly access.
PowerSTIG has many submodules that we don't publish to the gallery.
Those submodules extract the implementation details and transform them into objects that DSC can access.
We store those extracted rules in a new XML file and publish that within the module on the PowerShell gallery.
We do the rule extraction and transformation so that we can validate the results before we publish to the gallery.
That is not something that you have to deal with unless you want to contribute to the project directly.
The STIG rule data is kept separate from the DSC components so that we can add additional business logic to the workflow.
Each DSC composite resource requests the STIG rules through a standard process that enable the following functionality:

1. Enforce settings within a range of valid values defined in a STIG rule.
1. Inject exceptions/override to rule values and automatically document it.
1. Deconflict settings when multiple STIG's are applied to a server.

These scenarios allow each customer to start with a full STIG audit of each server to identify any deviations from the baseline.
Each non-compliant setting on each server, can then be reviewed to ensure it is authorized and properly documented per STIG and local policy.
If a deviation is authorized, it can be added to that node's configuration so that it is fully documented and tagged for future discovery/reporting/inspections.

## STIG Readiness

Everyone knows that in most cases you can't simply apply a STIG untested without causing an issue of some type.
To make things even harder, when the STIG is updated you should go through the individual changes and test their impact.
With PowerSTIG and DSC, you can redeploy your server with the updated STIG rules to validate the server is not negatively impacted before updating production.
We would recommend that you automate your validation process as well to ensure you don't miss testing a critical feature or service.
It is for these very reasons that we keep the STIG rules separate from the DSC components.
PowerSTIG wraps up all the STIG's rules as a single entry, so you can focus on the rest of your configuration.
The DSC platform will detect conflicting settings, so if you use PowerSTIG and try to change a STIG setting somewhere else, the configuration will error out.
This prevents you from accidently overwriting a STIG setting and not documenting it properly.
You can read more about this in the [Composite Resource][CompositeResources] page.
All of this leads to needing a way to:

1. Define local or organizational settings
1. Override a rule value a.k.a. exception to policy (and auto document it)
1. Skip individual rules that conflict with another rule (and auto document it)
1. Skip groups of rules that are managed with a different technology (and auto document it)

### Organizational Settings

There are several rules in some STIGs that allow for a range of valid values, but DSC requires a specific value.
An organizational setting allows each customer to define a specific value (within the valid range) for their environment.
This list of organizational settings should be centrally stored and all configurations for the enterprise can/should reference it.
By centrally storing a list of (IA approved) organizational settings, each server/service owner will have one less thing to manage.
Organizational settings are provided to a configuration as an input parameter.
Some values are intentionally left blank from the organization values to allow individuals to provide custom data input. If organizations do not provide the values in the organizational settings, the rule will be skipped by default.
For more information and examples of how to use organizational settings, please see [here][CompositeResourcesOrganizationalSettings].

### Exception

Exceptions to a rule are the biggest contributors to STIG non-compliance.
Not through malice or ignorance, but though enterprise technical debt.
A rule that is applied with a GPO or other script, can be overridden through other means.
That override process tends to happen in a vacuum and is not properly documented once it is implemented.
Like the organizational setting, an exception to policy is added to the configuration as an input parameter.
The exception process is restricted to overwriting the writeable properties of the individual DSC Resource according to its schema.
There are some STIGs that provide conflicting guidance on the value a rule should be set to.
Instead of implementing an exception to one STIG, we introduced the concept of skipping a rule.
For more information and examples of how to use exceptions, please see [here][CompositeResourcesException].

### Skip Rule / Type

The Skip rule was added to address any conflicting settings that are defined within and across STIG's.
To skip a specific rule in a configuration, you simply add it as an input parameter.
When onboarding PowerSTIG this can be a valuable parameter.

To further assist the onboarding process, we added the option to skip an entire class of rules, such as Registry, Account Policy, etc.

For more information and examples of how to use skipped rules, please see [here][CompositeResourcesSkipRule].

## Known issues

PowerShell Classes are generally good to work with, once you understand their nuances.
The big known issue is that once you load a PowerShell class into memory, it is pretty much written in stone.
No amount of import-module will ever update the class in memory.
The reason we mention this is because if you are testing and making changes to a class, then you need to reload your PS session and reimport the module/class.
Other than that, the project structure is set up so that you shouldn't bump into any other PS class issues.

[Contributing]:                             https://github.com/Microsoft/PowerStig/blob/dev/README.CONTRIBUTING.md
[DscOverview]:                              https://docs.microsoft.com/en-us/powershell/dsc/overview
[GettingStarted]:                           https://github.com/Microsoft/PowerStig/wiki/GettingStarted
[CompositeResources]:                       https://github.com/Microsoft/PowerStig/wiki/CompositeResources
[CompositeResourcesOrganizationalSettings]: https://github.com/Microsoft/PowerStig/wiki/CompositeResources#organizational-settings
[CompositeResourcesException]:              https://github.com/Microsoft/PowerStig/wiki/CompositeResources#exception
[CompositeResourcesSkipRule]:               https://github.com/Microsoft/PowerStig/wiki/CompositeResources#skip-rule--type
