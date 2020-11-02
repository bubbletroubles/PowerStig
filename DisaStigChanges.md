# DISA STIG "Group Id" Changes

**IMPORTANT INFORMATION: PowerSTIG 4.6.0 (Currently Unreleased), includes the October 2020 DISA Quarterly updates, which necessitates changes to existing configurations.**

Due to a DISA Update, which is explained [here](https://public.cyber.mil/announcement/disa-posts-files-to-test-new-stig-group-and-rule-ids/), the "Group Id" that PowerSTIG uses to identify specific rule automation is changing. 

What this means for a PowerSTIG user is Skips, Exceptions and/or Organizational Settings defined in PowerSTIG configurations will need to be updated, specifically if the following "V2" STIGs are used:

* Microsoft Office System 2013 STIG - Ver 2, Rel 1 
* Microsoft Outlook 2016 Version 2; Release 1 
* Microsoft SQL Server 2016 Instance Version 2; Release 1 
* Microsoft IIS 8.5 SITE/SERVER STIG - Ver 2, Rel 1 
* Microsoft IIS 10 SITE/SERVER STIG - Ver 2, Rel 1 
* Microsoft Windows 2012 Server DNS STIG - Ver 2, Rel 1 

For example, an Office System configuration is used in **PowerSTIG 4.5.1** and a SkipRule is defined for **V-17560**, the configuration is illustrated below:

```PowerShell
configuration OfficeSystem2013
{
    Import-DscResource -ModuleName PowerSTIG

    node 'localhost'
    {
        Office System2013Baseline
        {
            OfficeApp = 'System2013'
            SkipRule  = 'V-17560'
        }
    }
}
```

The same Office System configuration is used in **PowerSTIG 4.6.0** and greater, notice the Id has been updated to reflect the new/updated DISA Id:

```PowerShell
configuration OfficeSystem2013
{
    Import-DscResource -ModuleName PowerSTIG

    node 'localhost'
    {
        Office System2013Baseline
        {
            OfficeApp = 'System2013'
            SkipRule  = 'V-228518'
        }
    }
}
```

One way to reconsile the new ID is to view the STIG in Internet Explorer and search for the "**Legacy ID**", in the above example, it would be **V-17560**. Notice the new "**Group ID (Vulid)**" is **V-228518**, which is illustrated below.

![OfficeSystem2013Example](images\OfficeSystem2013Example.jpg)
