# Welcome to PowerStig

PowerStig is a project intended to aide customers that want or need to comply with STIG rules.
Beyond simple configuration item enforcement and auditing, we also report rule specific compliance.
We add the rule metadata i.e. Rule ID, Severity, etc. to the resource title through a standard name function.
The STIG rule data is kept separate from the DSC composite resources so that we can add additional business logic to the rule list request.
The composite resources are aligned to a specific STIG technology such as Windows Server, IIS Server, Firefox, etc.
Each composite resource requests the rules through a set of PowerShell classes that enable the following functionality:

1. Enforce settings within a range of valid values defined in a STIG rule.
1. Inject exceptions/override to rule values and automatically document it.
1. Deconflict settings when multiple STIG's are applied to a server.

These scenarios allow each customer to start with a full STIG audit of each server to identify any deviations from the baseline.
Each non-compliant setting on each server, can then be reviewed to ensure it is authorized and properly documented per STIG and local policy.
If a deviation is authorized, it can be added to that node's configuration so that it is fully documented and tagged for future discovery/reporting.

Since we add the STIG metadata to the DSC resource title, we can also use the DSC results to automatically create a populated STIG viewer checklist.

## Business logic

As previously mentioned, we keep the list of STIG rules separate from the composite resources.
We do this so that we can enforce business rules when a configuration is complied.
There are currently 3 main business rules implemented.

1. Local or organizational settings
1. Rule value override/Exception to policy
1. Skip rules that conflict with another rule (and auto document it)

### Organizational Settings

There are several rules in some STIGs that allow for a range of valid values, but DSC requires a specific value.
An organizational setting allows each customer to define a specific value (within the valid range) for their environment.
This list of organizational settings can be centrally stored and all configurations for the enterprise can/should reference it.
By centrally storing a list of (IA approved) organizational settings, each server/service owner will have one less thing to manage.
Organizational settings are provided to a configuration as an input parameter.
If a value is provided to a configuration that is outside of the valid range, PowerSTIG will detect it and throw an error.
If you still need to configure a rule that is outside of a valid range, you can configure an exception to the rule.

### Exception

Exceptions to a rule are the biggest contributors to STIG non-compliance.
Not through malice or ignorance, but though enterprise technical debt.
A rule that is applied with a GPO or other script, can be overridden through other means.
That override process tends to happen in a vacuum and is not properly documented once it is implemented.
Like the organizational setting, an exception to policy is added to the configuration as an input parameter.
The exception process is restricted to overwriting the writeable properties of the individual DSC Resource according to its schema.
There are some STIGs that provide conflicting guidance on the value a rule should be set to.
Instead of implementing an exception to one STIG, we introduced the concept of skipping a rule.

### Skip Rule

The Skip rule was added to address any conflicting settings that are defined within and across STIG's.
To skip a specific rule in a configuration, you simply add it as an input parameter.
When onboarding PowerSTIG this can be a valuable parameter.

### Skip Rule Type

To further assist the onboarding process, we added the option to skip an entire class of rules, such as Registry, Account Policy, etc.

## Getting started

To get started using PowerStig, install it from the PowerShell gallery using PowerShellGet (in PowerShell 5.0), run the following command:

```PowerShell
Find-Module -Name PowerStig* -Repository PSGallery | Install-Module
```

To confirm installation, run the below command and ensure you see the PowerStig modules available:

```PowerShell
Get-Module -Name PowerStig* -ListAvailable
```

---

## Known issues

PowerShell Classes are generally nice to have, once you understand their nuances. The big known issue is that once you load a PowerShell class into memory, it is pretty much written in stone. No amount of import-module will ever update the class in memory. The reason we mention this is because if are testing and making changes to a class, then you need to reload your PS session and reimport the module/class. Other than that, the project structure is set up so that you shouldn't bump into any other PS class issues.
