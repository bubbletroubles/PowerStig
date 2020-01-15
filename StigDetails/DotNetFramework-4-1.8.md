# [MS Dot Net Framework, Version 1.8](https://github.com/Microsoft/PowerStig/wiki/DotNetFramework-4-1.8)

**Title:** Microsoft DotNet Framework 4.0 STIG  
**Version:** 1  
**Release:** Release: 8 Benchmark Date: 16 July 2019  
**FileName:** U_MS_DotNet_Framework_4-0_STIG_V1R8_Manual-xccdf.xml  
**Created:** 8/14/2019  
**Description:** Applicable to systems and applications utilizing the Microsoft .Net version 4.0 framework.  
**StigRuleCoverage:** **2** of **16** rules are automated; **12%**  

## Automated Rules

| StigRuleId | Severity | RuleType | DscResource | DuplicateOf | Title |
| :---- | :---- | :---- | :---- | :---- | :---- |
| V-30935 | Medium | RegistryRule | Registry |  | APPNET0063 Validation of Strong Names |
| V-81495 | Medium | RegistryRule | Registry |  | APPNET0075 Disable TLS RC4 cipher in .Net |

## Document / Manual Rules (Not Automated)

| StigRuleId | Severity | RuleType | Title |
| :---- | :---- | :---- | :---- |
| V-7055 | Medium | DocumentRule | APPNET0031 No Strong Name Verification |
| V-7069 | Medium | DocumentRule | APPNET0055 CAS and Policy Config File Backups |
| V-7061 | Medium | ManualRule | APPNET0046 Test Root certificates |
| V-7063 | Medium | ManualRule | APPNET0048 Publisher Membership Condition |
| V-7067 | Medium | ManualRule | APPNET0052 Strong Name Membership Condition |
| V-7070 | Medium | ManualRule | APPNET0060 Remoting Services Auth and Encryption HTTP Channel. |
| V-18395 | Medium | ManualRule | APPNET0061 Unsupported .Net Framework Versions |
| V-30926 | Medium | ManualRule | APPNET0062 Administering FIPS Policy |
| V-30937 | Low | ManualRule | APPNET0064 Legacy Security Policy |
| V-30968 | Medium | ManualRule | APPNET0065 Load From Remote Sources |
| V-30972 | Low | ManualRule | APPNET0066 .Net Default Proxy Settings |
| V-30986 | Medium | ManualRule | APPNET0070 Software protections and controls |
| V-31026 | Medium | ManualRule | APPNET0067 .NET Event Tracing for Windows. |
| V-32025 | Medium | ManualRule | APPNET0071 Remoting Services auth and encryption TCP channel |
