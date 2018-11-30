
Each composite resource requests the list of STIG rules through a standard interface.
Any organizational settings, Exceptions, and Skipped rules are injected into the rule list before being returned to the composite for compilation.
Once the list of rules is returned, each rule type is passed to the respective DSC Resource to process the data.
The first time that you run a PowerSTIG configuration against a server, there will probably be many non-compliant settings.
This will most likely be due to the default organizational settings not being aligned to your local values.

## Organizational Settings

The organizational settings process is not yet as elegant as we would like, but it is functional.
Each STIG is provided with a default organizational settings file that we generate by using the max value in a range.
You can take that file from the module and update the settings with your local values.

If you look inside of the PowerStig module, you will see a StigData\Processed folder.
Inside that folder is a list of all the STIG's that we currently have processed.
Each file has an associated org.defaut.xml file that contains the default list of organizational settings.
Copy this file to a central location and update the value element of each rule.

**NOTICE** the comment above each rule in the organizational settings file.
That comment is enforced when you compile the configuration.
If you provide a value that will test false, PowerSTIG will throw an error to identify the non-compliant setting.

Once that file is updated, save it and reference it in all of your enterprise configurations.
This will accelerate the PowerSTIG onboarding process.
Here is a sample DSC scriptblock to demonstrate how you can use a centralized file.
Notice that the file is specific to individual STIG version.
With each new version of the STIG, we will release a new corresponding org settings file.
The list doesn't change very often, but it can change.
You will need to incorporate this change into your release process.

```powershell
    WindowsServer BaseLine
    {
        OsVersion   = '2012R2'
        OsRole      = 'MS'
        StigVersion = '2.13'
        OrgSettings = "\\Share\PowerSTIG\2012R2-MS-2.13.orgsettings.xml"
    }
```

## Exception

Exceptions in PowerSTIG are injected into the list of Rules before they are returned to the composite to be compiled into a MOF.
The reason for this is that when an exception is added to a configuration, we update the title of the rule.
This allows us to quickly identify any rule exceptions for a server and across the enterprise with central reporting.
In this following example we will look at Rule 'V-1075'.
If we compile a MOF with no exception.

```powershell
    WindowsServer BaseLine
    {
        OsVersion   = '2012R2'
        OsRole      = 'MS'
        StigVersion = '2.13'
    }
```

The following MOF shows ResourceID is a registry rule with a low severity.
Also notice that the ValueData is set to '0'.

```exe
ResourceID = "[xRegistry][V-1075][low][Display Shutdown Button]::[WindowsServer]BaseLine";
 ValueName = "ShutdownWithoutLogon";
 Key = "HKEY_LOCAL_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System";
 Ensure = "Present";
 Force = True;
 SourceInfo = "C:\\PowerSTIG\\2.2.0.0\\DSCResources\\Resources\\windows.xRegistry.ps1::12::9::xRegistry";
 ValueType = "DWord";
 ModuleName = "xPSDesiredStateConfiguration";
 ValueData = {
    "0"
};
 ```

Now if we have an application that fails when this rule is applied per the STIG, we can add an exception.
The following example shows how you would add an exception for V-1075.
**NOTE** we are actively working to make this entry much simpler in an upcoming release.
Our goal is to end up with Exception = @{'V-1075'= '1'}, but for now the follow format has to be used.

```powershell
    WindowsServer BaseLine
    {
        OsVersion   = '2012R2'
        OsRole      = 'MS'
        StigVersion = '2.13'
        Exception   = @{'V-1075'= @{'ValueData'='1'} }
    }
```

Notice the ResourceId title has been updated with '[Exception]' and the ValueData has been updated with the value of 1.
This is the heart of the exception process.
Without updating the ValueData, DSC will report the setting as non-compliant.
Without updating the title, we would not be able to distinguish between a default value and an exception to policy.
Having all this data in the MOF enables a lot of really interesting reporting options from cheating STIG checklists, to OMS and PowerBI integration.

```exe
ResourceID = "[xRegistry][V-1075][low][[Exception]Display Shutdown Button]::[WindowsServer]BaseLine";
 ValueName = "ShutdownWithoutLogon";
 Key = "HKEY_LOCAL_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System";
 Ensure = "Present";
 Force = True;
 SourceInfo = "C:\\PowerSTIG\\2.2.0.0\\DSCResources\\Resources\\windows.xRegistry.ps1::12::9::xRegistry";
 ValueType = "DWord";
 ModuleName = "xPSDesiredStateConfiguration";
 ValueData = {
    "1"
};
```

## Skip Rule / Type

Just like with an exception, you can enter a rule to completly skip checking it.
At first thought, the may not seem like a good idea.
As we added more STIG'd and compiled a MOF from multiple composites, we discovered some STIG's had conflicting settings.
This is a problem for DSC since you can not have conflicting setting as the compiler will through an exception.

We added the SkipRule as a way to convert a rule form it's origioal type to a non-conflicting type.
This allows up to keep track of the setting, but allow you to decide which STIG rule will be applied.
Using the same sample from above, no skip rules are provided, so the following configuration:

```powershell
    WindowsServer BaseLine
    {
        OsVersion   = '2012R2'
        OsRole      = 'MS'
        StigVersion = '2.13'
    }
```

Results in the following MOF.
The ResourceID is a registry rule with a low severity and the ValueData is set to '0'.

```exe
ResourceID = "[xRegistry][V-1075][low][Display Shutdown Button]::[WindowsServer]BaseLine";
 ValueName = "ShutdownWithoutLogon";
 Key = "HKEY_LOCAL_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\Policies\\System";
 Ensure = "Present";
 Force = True;
 SourceInfo = "C:\\PowerSTIG\\2.2.0.0\\DSCResources\\Resources\\windows.xRegistry.ps1::12::9::xRegistry";
 ValueType = "DWord";
 ModuleName = "xPSDesiredStateConfiguration";
 ValueData = {
    "0"
};
 ```

Now if we determine that another STIG we want to apply to this node sets this same registry key to 3, then we will get an error.
To avoid the error, we enter the rule to skip and rerun the configuration.

```powershell
    WindowsServer BaseLine
    {
        OsVersion   = '2012R2'
        OsRole      = 'MS'
        StigVersion = '2.13'
        SkipRule    = 'V-1075'
    }
```

Now V-1075 has been passed to the Script resource instead of the Registry resource.
In the future we will build a resource to handle this better and also because the script resource will not be allowed with device guard is enabled.

```exe
ResourceID = "[Script][V-1075][low][[Skip]Display Shutdown Button]::[WindowsServer]BaseLine";
 GetScript = "\n            Return @{\n                'Result' = Get-ResourceTitle -Rule $rule\n            }\n        ";
 TestScript = "\n            return $true\n        ";
 SourceInfo = "C:\\PowerSTIG\\2.2.0.0\\DSCResources\\Resources\\windows.Script.skip.ps1::8::5::Script";
 SetScript = " ";
 ModuleName = "PSDesiredStateConfiguration";
```

Everything described in this page applies to every composite in the PowerStig module.
As the DSC platform evolves and new technologies are born, we hope to evolve with them.

If you encounter any issues with any of these samples in any of the composite resources, please open an issue so that we can address it as soon as possible. IF you have any thought on how we can do this better or want to provide a resource to better support this scenario, please open an issue so that we can discuss it.
