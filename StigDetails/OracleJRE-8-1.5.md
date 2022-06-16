# [JRE 8 and Windows STIG, Version 1.5](https://github.com/Microsoft/PowerStig/wiki/OracleJRE-8-1.5)

**Title:** Java Runtime Environment (JRE) version 8 STIG for Windows  
**Version:** 1  
**Release:** Release: 5 Benchmark Date: 26 Jan 2018  
**FileName:** U_Oracle_JRE_8_Windows_STIG_V1R5_Manual-xccdf.xml  
**Created:** 11/21/2019  
**Description:** The Java Runtime Environment (JRE) is a bundle developed and offered by Oracle Corporation which includes the Java Virtual Machine (JVM), class libraries, and other components necessary to run Java applications and applets.  Certain default settings within the JRE pose a security risk so it is necessary to deploy system wide properties to ensure a higher degree of security when utilizing the JRE.  
**Total Stig Rule Coverage:** **20** of **26** rules are automated; **77%**

* **High (CAT I):** **0** of **1** rules are automated
* **Medium (CAT II):** **18** of **23** rules are automated
* **Low (CAT III):** **2** of **2** rules are automated

## Automated Rules

| StigRuleId | Severity | RuleType | DscResource | DuplicateOf |
| :---- | :---- | :---- | :---- | :---- |
| V-66723.a | Medium | FileContentRule | KeyValuePairFile |  |
| V-66723.b | Medium | FileContentRule | KeyValuePairFile |  |
| V-66941.a | Medium | FileContentRule | KeyValuePairFile |  |
| V-66941.b | Medium | FileContentRule | KeyValuePairFile |  |
| V-66945.a | Low | FileContentRule | KeyValuePairFile |  |
| V-66945.b | Low | FileContentRule | KeyValuePairFile |  |
| V-66947.a | Medium | FileContentRule | KeyValuePairFile |  |
| V-66947.b | Medium | FileContentRule | KeyValuePairFile |  |
| V-66949.a | Medium | FileContentRule | KeyValuePairFile |  |
| V-66949.b | Medium | FileContentRule | KeyValuePairFile |  |
| V-66951.a | Medium | FileContentRule | KeyValuePairFile |  |
| V-66951.b | Medium | FileContentRule | KeyValuePairFile |  |
| V-66953.a | Medium | FileContentRule | KeyValuePairFile |  |
| V-66953.b | Medium | FileContentRule | KeyValuePairFile |  |
| V-66955.a | Medium | FileContentRule | KeyValuePairFile |  |
| V-66955.b | Medium | FileContentRule | KeyValuePairFile |  |
| V-66961.a | Medium | FileContentRule | KeyValuePairFile |  |
| V-66961.b | Medium | FileContentRule | KeyValuePairFile |  |
| V-66963.a | Medium | FileContentRule | KeyValuePairFile |  |
| V-66963.b | Medium | FileContentRule | KeyValuePairFile |  |

## Document / Manual Rules (Not Automated)

| StigRuleId | Severity | RuleType |
| :---- | :---- | :---- |
| V-66939 | Medium | ManualRule |
| V-66943 | Medium | ManualRule |
| V-66957 | Medium | ManualRule |
| V-66959 | Medium | ManualRule |
| V-66965 | Medium | ManualRule |
| V-66967 | High | ManualRule |
