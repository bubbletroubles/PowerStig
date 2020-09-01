# [IIS 8-5 Server STIG, Version 1.11](https://github.com/Microsoft/PowerStig/wiki/IISServer-8.5-1.11)

**Title:** IIS 8.5 Server Security Technical Implementation Guide  
**Version:** 1  
**Release:** Release: 11 Benchmark Date: 24 Jul 2020  
**FileName:** U_MS_IIS_8-5_Server_STIG_V1R11_Manual-xccdf.xml  
**Created:** 8/5/2020  
**Description:** This Security Technical Implementation Guide is published as a tool to improve the security of Department of Defense (DoD) information systems. The requirements are derived from the National Institute of Standards and Technology (NIST) 800-53 and related documents. Comments or proposed revisions to this document should be sent via email to the following address: disa.stig_spt@mail.mil.  
**Total Stig Rule Coverage:** **30** of **60** rules are automated; **50%**

* **High (CAT I):** **9** of **13** rules are automated
* **Medium (CAT II):** **21** of **47** rules are automated
* **Low (CAT III):** **0** of **0** rules are automated

## Automated Rules

| StigRuleId | Severity | RuleType | DscResource | DuplicateOf |
| :---- | :---- | :---- | :---- | :---- |
| V-76681 | Medium | IisLoggingRule | xIISLogging |  |
| V-76683 | Medium | IisLoggingRule | xIISLogging |  |
| V-76687 | Medium | IisLoggingRule | xIISLogging |  |
| V-76689 | Medium | IisLoggingRule | xIISLogging |  |
| V-76711.a | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-76711.b | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-76711.c | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-76711.d | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-76711.e | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-76745 | Medium | PermissionRule | NTFSAccessEntry |  |
| V-76759.a | High | RegistryRule | Registry |  |
| V-76759.b | High | RegistryRule | Registry |  |
| V-76759.c | High | RegistryRule | Registry |  |
| V-76759.d | High | RegistryRule | Registry |  |
| V-76759.e | High | RegistryRule | Registry |  |
| V-76759.f | High | RegistryRule | Registry |  |
| V-76759.g | High | RegistryRule | Registry |  |
| V-76759.h | High | RegistryRule | Registry |  |
| V-76759.i | High | RegistryRule | Registry |  |
| V-76725 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76727.a | Medium | WebConfigurationPropertyRule | None | V-76725 |
| V-76727.b | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76731.a | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76731.b | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76733 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76737 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76757 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76769.a | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76769.b | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76713 | Medium | WindowsFeatureRule | WindowsFeature |  |

## Document / Manual Rules (Not Automated)

| StigRuleId | Severity | RuleType |
| :---- | :---- | :---- |
| V-76679 | Medium | DocumentRule |
| V-76699 | Medium | DocumentRule |
| V-76701 | Medium | DocumentRule |
| V-76719 | High | DocumentRule |
| V-76729 | Medium | DocumentRule |
| V-76735 | Medium | DocumentRule |
| V-76739 | High | DocumentRule |
| V-76743 | Medium | DocumentRule |
| V-76747 | Medium | DocumentRule |
| V-76749 | Medium | DocumentRule |
| V-76751 | Medium | DocumentRule |
| V-76755 | Medium | DocumentRule |
| V-76761 | Medium | DocumentRule |
| V-76767 | Medium | DocumentRule |
| V-102893 | Medium | DocumentRule |
| V-76685 | Medium | ManualRule |
| V-76695 | Medium | ManualRule |
| V-76697 | Medium | ManualRule |
| V-76703 | Medium | ManualRule |
| V-76705 | High | ManualRule |
| V-76707 | Medium | ManualRule |
| V-76709 | Medium | ManualRule |
| V-76715 | Medium | ManualRule |
| V-76717 | Medium | ManualRule |
| V-76721 | Medium | ManualRule |
| V-76741 | Medium | ManualRule |
| V-76753 | Medium | ManualRule |
| V-76765 | High | ManualRule |
| V-76771 | Medium | ManualRule |
| V-95633 | Medium | ManualRule |
