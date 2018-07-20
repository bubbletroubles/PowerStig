# Welcome to PowerStig

PowerStig is a class-based project that contains two modules (Convert and STIG) to support the core concepts of:

1. Provide STIG data in a format that is accessible to automation.
1. Provide for the inevitable exception to policy.
1. Provide for deconflicting settings when multiple STIG's are applied to a server.

## Common Components

Inside the [Module](https://github.com/Microsoft/PowerStig/tree/dev/Module) directory in the root of the project, you will find many submodules that support the Convert and STIG modules. The module names are prepended to the submodules to identify which module they support. There is a third type of [Common](https://github.com/Microsoft/PowerStig/tree/dev/Module/Common) submodule that is used in both modules.

## Convert Components

The Convert module is only used to parse the xccdf STIG from the StigData\Archive directory and save it to the StigData\Processed directory. This conversion process is a one-time effort for each version of the STIG as they are released and ultimately pushed to the PowerShell gallery. This Convert module **IS NOT** published in the PowerShell Gallery. Since this module is not published, if you want to use it or contribute to any of the open [issues](https://github.com/Microsoft/PowerStig/issues), you will need to refer to our [contributing guide](https://github.com/Microsoft/PowerStig/blob/dev/CONTRIBUTING.md).

## STIG components

The STIG module is a data module that provides a set of PowerShell classes to enable uniform access to the Processed PowerStig data (PowerStigXml). The concepts of Organization settings, Exceptions and Skipped Rules are implemented in the STIG module to provide consistent data across other projects that leverage PowerStig. The STIG module and StigData\Processed directory **ARE** published in the gallery.

## Getting started

You will normally not use PowerSTIG directly, but rather indirectly through one of our sub-projects like [PowerStigDsc](https://github.com/Microsoft/PowerStigDsc)
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

PowerShell Classes are generally pretty cool, once you understand their nuances. The big known issue is that once you load a PowerShell class, it is pretty much written in stone. No amount of reloading will ever update the class. The reason we mention this is because if are testing and making changes to a class, then you need to reload your PS session and reimport the module/class. Other than that, the project structure is set up so that you should bump into any other issues the PS Classes.
