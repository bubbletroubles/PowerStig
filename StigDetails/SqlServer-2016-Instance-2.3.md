# [MS SQL Server 2016 Instance STIG, Version 2.3](https://github.com/Microsoft/PowerStig/wiki/SqlServer-2016-Instance-2.3)

**Title:** MS SQL Server 2016 Instance Security Technical Implementation Guide  
**Version:** 2  
**Release:** Release: 3 Benchmark Date: 23 Apr 2021 3.2.2.36079 1.10.0  
**FileName:** U_MS_SQL_Server_2016_Instance_STIG_V2R3_Manual-xccdf.xml  
**Created:** 8/12/2021  
**Description:** This Security Technical Implementation Guide is published as a tool to improve the security of Department of Defense (DoD) information systems. The requirements are derived from the National Institute of Standards and Technology (NIST) 800-53 and related documents. Comments or proposed revisions to this document should be sent via email to the following address: disa.stig_spt@mail.mil.  
**Total Stig Rule Coverage:** **53** of **135** rules are automated; **39%**

* **High (CAT I):** **1** of **9** rules are automated
* **Medium (CAT II):** **52** of **124** rules are automated
* **Low (CAT III):** **0** of **2** rules are automated

## Automated Rules

| StigRuleId | Severity | RuleType | DscResource | DuplicateOf |
| :---- | :---- | :---- | :---- | :---- |
| V-213967.a | Medium | RegistryRule | Registry |  |
| V-213967.b | Medium | RegistryRule | Registry |  |
| V-213967.c | Medium | RegistryRule | Registry |  |
| V-213967.d | Medium | RegistryRule | Registry |  |
| V-213967.e | Medium | RegistryRule | Registry |  |
| V-213967.f | Medium | RegistryRule | Registry |  |
| V-213967.g | Medium | RegistryRule | Registry |  |
| V-213967.h | Medium | RegistryRule | Registry |  |
| V-213967.i | Medium | RegistryRule | Registry |  |
| V-213967.j | Medium | RegistryRule | Registry |  |
| V-213967.k | Medium | RegistryRule | Registry |  |
| V-213967.l | Medium | RegistryRule | Registry |  |
| V-213967.m | Medium | RegistryRule | Registry |  |
| V-213967.n | Medium | RegistryRule | Registry |  |
| V-213967.o | Medium | RegistryRule | Registry |  |
| V-213967.p | Medium | RegistryRule | Registry |  |
| V-213967.q | Medium | RegistryRule | Registry |  |
| V-213967.r | Medium | RegistryRule | Registry |  |
| V-213967.s | Medium | RegistryRule | Registry |  |
| V-213967.t | Medium | RegistryRule | Registry |  |
| V-213968 | High | SecurityOptionRule | SecurityOption |  |
| V-213940 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-213989 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-213999 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-214000 | Medium | SqlScriptQueryRule | None | V-213999 |
| V-214001 | Medium | SqlScriptQueryRule | None | V-213999 |
| V-214002 | Medium | SqlScriptQueryRule | None | V-213999 |
| V-214003 | Medium | SqlScriptQueryRule | None | V-213940 |
| V-214004 | Medium | SqlScriptQueryRule | None | V-213940 |
| V-214007 | Medium | SqlScriptQueryRule | None | V-213999 |
| V-214008 | Medium | SqlScriptQueryRule | None | V-213999 |
| V-214009 | Medium | SqlScriptQueryRule | None | V-213940 |
| V-214010 | Medium | SqlScriptQueryRule | None | V-213940 |
| V-214013 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-214014 | Medium | SqlScriptQueryRule | None | V-213940 |
| V-214015 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-214016 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-214017 | Medium | SqlScriptQueryRule | None | V-214016 |
| V-214018 | Medium | SqlScriptQueryRule | None | V-213940 |
| V-214028 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-214029 | Medium | SqlScriptQueryRule | SqlScriptQuery |  |
| V-213957 | Medium | SqlServerConfigurationRule | SqlServerConfiguration |  |
| V-213958 | Medium | SqlServerConfigurationRule | SqlServerConfiguration |  |
| V-213975 | Medium | SqlServerConfigurationRule | SqlServerConfiguration |  |
| V-214034 | Medium | SqlServerConfigurationRule | SqlServerConfiguration |  |
| V-214035 | Medium | SqlServerConfigurationRule | SqlServerConfiguration |  |
| V-214036 | Medium | SqlServerConfigurationRule | SqlServerConfiguration |  |
| V-214037 | Medium | SqlServerConfigurationRule | SqlServerConfiguration |  |
| V-214038 | Medium | SqlServerConfigurationRule | SqlServerConfiguration |  |
| V-214039 | Medium | SqlServerConfigurationRule | SqlServerConfiguration |  |
| V-214040 | Medium | SqlServerConfigurationRule | SqlServerConfiguration |  |
| V-214041 | Medium | SqlServerConfigurationRule | SqlServerConfiguration |  |
| V-214043 | Medium | SqlServerConfigurationRule | SqlServerConfiguration |  |

## Document / Manual Rules (Not Automated)

| StigRuleId | Severity | RuleType |
| :---- | :---- | :---- |
| V-213929 | Medium | DocumentRule |
| V-213930 | Medium | DocumentRule |
| V-213931 | Medium | DocumentRule |
| V-213932 | High | DocumentRule |
| V-213933 | Medium | DocumentRule |
| V-213936 | Medium | DocumentRule |
| V-213937 | Medium | DocumentRule |
| V-213938 | Medium | DocumentRule |
| V-213939 | Medium | DocumentRule |
| V-213941 | Medium | DocumentRule |
| V-213942 | Medium | DocumentRule |
| V-213943 | Medium | DocumentRule |
| V-213947 | Medium | DocumentRule |
| V-213948 | Medium | DocumentRule |
| V-213949 | Medium | DocumentRule |
| V-213950 | Medium | DocumentRule |
| V-213951 | Medium | DocumentRule |
| V-213952 | Medium | DocumentRule |
| V-213954 | Medium | DocumentRule |
| V-213955 | Medium | DocumentRule |
| V-213956 | Medium | DocumentRule |
| V-213959 | Medium | DocumentRule |
| V-213960 | Medium | DocumentRule |
| V-213962 | Medium | DocumentRule |
| V-213965 | Medium | DocumentRule |
| V-213970 | Medium | DocumentRule |
| V-213972 | High | DocumentRule |
| V-213976 | Medium | DocumentRule |
| V-213977 | Medium | DocumentRule |
| V-213979 | Medium | DocumentRule |
| V-213980 | Medium | DocumentRule |
| V-213981 | Medium | DocumentRule |
| V-213982 | Medium | DocumentRule |
| V-213983 | Medium | DocumentRule |
| V-213986 | Medium | DocumentRule |
| V-213987 | Medium | DocumentRule |
| V-213988 | Medium | DocumentRule |
| V-213990 | Medium | DocumentRule |
| V-213991 | Medium | DocumentRule |
| V-213992 | Medium | DocumentRule |
| V-213993 | Medium | DocumentRule |
| V-213996 | Medium | DocumentRule |
| V-213997 | Medium | DocumentRule |
| V-213998 | Medium | DocumentRule |
| V-214005 | Medium | DocumentRule |
| V-214006 | Medium | DocumentRule |
| V-214011 | Medium | DocumentRule |
| V-214012 | Medium | DocumentRule |
| V-214019 | Medium | DocumentRule |
| V-214020 | Medium | DocumentRule |
| V-214024 | Medium | DocumentRule |
| V-214025 | Medium | DocumentRule |
| V-214026 | Medium | DocumentRule |
| V-214027 | Medium | DocumentRule |
| V-214030 | Medium | DocumentRule |
| V-214031 | Medium | DocumentRule |
| V-214032 | Medium | DocumentRule |
| V-214033 | Medium | DocumentRule |
| V-214042 | Low | DocumentRule |
| V-214044 | Low | DocumentRule |
| V-214045 | High | DocumentRule |
| V-213934 | High | ManualRule |
| V-213935 | Medium | ManualRule |
| V-213944 | Medium | ManualRule |
| V-213953 | Medium | ManualRule |
| V-213961 | Medium | ManualRule |
| V-213963 | Medium | ManualRule |
| V-213964 | Medium | ManualRule |
| V-213966 | High | ManualRule |
| V-213969 | Medium | ManualRule |
| V-213971 | Medium | ManualRule |
| V-213973 | Medium | ManualRule |
| V-213974 | Medium | ManualRule |
| V-213978 | Medium | ManualRule |
| V-213984 | Medium | ManualRule |
| V-213985 | Medium | ManualRule |
| V-213994 | Medium | ManualRule |
| V-213995 | Medium | ManualRule |
| V-214021 | Medium | ManualRule |
| V-214022 | High | ManualRule |
| V-214023 | High | ManualRule |
| V-214046 | High | ManualRule |
