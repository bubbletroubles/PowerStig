# STIG Rule Help

Each rule type is accessed in a standarized way through the STIG classes.
All of the supporting classes abstract away the underliying data structure.
This allows us to make changes without impacting your existing configurations.
The Rule base class provides all of the functionality for things like org settings, exceptions and skipped rules.
The new STIG class design allows us to provide context to rules and provide a much better help expereince going forward.

For example, if you run the following snip you will get a list of Windows Server STIG's (trimmed for brevity)

```powershell
C:\> Get-Stig -Technology WindowsServer | FT *

Technology    TechnologyVersion TechnologyRole Version RuleList
----------    ----------------- -------------- ------- --------
WindowsServer 2016              DC             1.6     {}
WindowsServer 2016              DC             1.7     {}
WindowsServer 2016              MS             1.6     {}
WindowsServer 2016              MS             1.7     {}
```

Now we will just grab the first STIG and look at it a little closer.

```powershell
$stig = (Get-Stig -Technology WindowsServer)[0]

$stig | Get-Member

   TypeName: STIG

Name              MemberType Definition
----              ---------- ----------
Equals            Method     bool Equals(System.Object obj)
GetExceptionHelp  Method     string GetExceptionHelp(string RuleId)
GetHashCode       Method     int GetHashCode()
GetLatest         Method     version GetLatest()
GetType           Method     type GetType()
LoadRules         Method     void LoadRules()
ToString          Method     string ToString()
Validate          Method     bool Validate()
```

Notice that it is a STIG type and not xml, hashtabel, or CustomPsObject.
If you are not famailar with .Net Types, that's ok you just get the benefits.
The reason we are highlighting the STIG type with Get-Member is because we have added a method 'GetExceptionHelp' that we hope will simplify working with the rule objects.

So what does this mean to you in parctice?
If we continue with the STIG object we created above, we can try out the GetExceptionHelp method.
Provide the STIG ID that you are currenly working on and pass it to the STIG object.
In this example 'V-73487' is giving us some trouble and we need to know more about it and how to work with it.

```powershell
$stig.GetExceptionHelp('V-73487')
```

If the Rule id exists in the STIG, you will get back fairly detailed help content.
Some rules are more complex than others so the help will contain more or less content based on the ruel complexity.

```powershell
Rule Type
   RegistryRule

Description
   The RegistryRule property 'ValueData' can be overridden
   with an exception using the syntax below.

Notes
   This registry value type is Dword. Ensure the exception data matches the value type.

Sample Configuration

configuration Sample
{
    Import-DscResource -ModuleName PowerStig -ModuleVersion 3.0.0.0

    Node $NodeName
    {
        WindowsServer BaseLine
        {
            OsVersion   = '2016'
            OsRole      = 'DC'
            StigVersion = '1.6'
            Exception   = @{'V-73487' = '1'}
        }
    }
}
```

We will continue to evolve the help system, but hope that this feels like a major step forward.
