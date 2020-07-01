# [IIS 10-0 Server STIG, Version 1.1](https://github.com/Microsoft/PowerStig/wiki/IISServer-10.0-1.1)

**Title:** Microsoft IIS 10.0 Server Security Technical Implementation Guide  
**Version:** 1  
**Release:** Release: 1 Benchmark Date: 20 Mar 2020  
**FileName:** U_MS_IIS_10-0_Server_V1R1_Manual-xccdf.xml  
**Created:** 5/29/2020  
**Description:** This Security Technical Implementation Guide is published as a tool to improve the security of Department of Defense (DoD) information systems. The requirements are derived from the National Institute of Standards and Technology (NIST) 800-53 and related documents. Comments or proposed revisions to this document should be sent via email to the following address: disa.stig_spt@mail.mil.  
**Total Stig Rule Coverage:** **29** of **58** rules are automated; **50%**

* **High (CAT I):** **9** of **13** rules are automated
* **Medium (CAT II):** **20** of **44** rules are automated
* **Low (CAT III):** **0** of **1** rules are automated

## Automated Rules

| StigRuleId | Severity | RuleType | DscResource | DuplicateOf |
| :---- | :---- | :---- | :---- | :---- |
| V-100105 | Medium | IisLoggingRule | xIISLogging |  |
| V-100107 | Medium | IisLoggingRule | xIISLogging |  |
| V-100111 | Medium | IisLoggingRule | xIISLogging |  |
| V-100113 | Medium | IisLoggingRule | xIISLogging |  |
| V-100131.a | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-100131.b | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-100131.c | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-100131.d | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-100131.e | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-100163 | Medium | PermissionRule | NTFSAccessEntry |  |
| V-100177.a | High | RegistryRule | Registry |  |
| V-100177.b | High | RegistryRule | Registry |  |
| V-100177.c | High | RegistryRule | Registry |  |
| V-100177.d | High | RegistryRule | Registry |  |
| V-100177.e | High | RegistryRule | Registry |  |
| V-100177.f | High | RegistryRule | Registry |  |
| V-100177.g | High | RegistryRule | Registry |  |
| V-100177.h | High | RegistryRule | Registry |  |
| V-100177.i | High | RegistryRule | Registry |  |
| V-100143 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-100145.a | Medium | WebConfigurationPropertyRule | None | V-100143 |
| V-100149.a | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-100149.b | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-100151 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-100155 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-100175 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-100183.a | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-100183.b | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-100133 | Medium | WindowsFeatureRule | WindowsFeature |  |

## Document / Manual Rules (Not Automated)

| StigRuleId | Severity | RuleType |
| :---- | :---- | :---- |
| V-100103 | Medium | DocumentRule |
| V-100119 | Medium | DocumentRule |
| V-100121 | Medium | DocumentRule |
| V-100139 | High | DocumentRule |
| V-100147 | Medium | DocumentRule |
| V-100153 | Medium | DocumentRule |
| V-100157 | High | DocumentRule |
| V-100161 | Medium | DocumentRule |
| V-100165 | Medium | DocumentRule |
| V-100167 | Medium | DocumentRule |
| V-100169 | Medium | DocumentRule |
| V-100173 | Medium | DocumentRule |
| V-100179 | Medium | DocumentRule |
| V-100109 | Medium | ManualRule |
| V-100115 | Medium | ManualRule |
| V-100117 | Medium | ManualRule |
| V-100123 | Medium | ManualRule |
| V-100125 | High | ManualRule |
| V-100127 | Medium | ManualRule |
| V-100129 | Medium | ManualRule |
| V-100135 | Medium | ManualRule |
| V-100137 | Medium | ManualRule |
| V-100141 | Medium | ManualRule |
| V-100159 | Medium | ManualRule |
| V-100171 | Medium | ManualRule |
| V-100181 | High | ManualRule |
| V-100185 | Medium | ManualRule |
| V-100187 | Medium | ManualRule |
| V-100189 | Low | ManualRule |
