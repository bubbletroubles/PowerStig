# [IIS 8-5 Server STIG, Version 1.9](https://github.com/Microsoft/PowerStig/wiki/IISServer-8.5-1.9)

**Title:** IIS 8.5 Server Security Technical Implementation Guide  
**Version:** 1  
**Release:** Release: 9 Benchmark Date: 25 Oct 2019  
**FileName:** U_MS_IIS_8-5_Server_STIG_V1R9_Manual-xccdf.xml  
**Created:** 11/18/2019  
**Description:** This Security Technical Implementation Guide is published as a tool to improve the security of Department of Defense (DoD) information systems. The requirements are derived from the National Institute of Standards and Technology (NIST) 800-53 and related documents. Comments or proposed revisions to this document should be sent via email to the following address: disa.stig_spt@mail.mil.  
**StigRuleCoverage:** **29** of **58** rules are automated; **50%**  

## Automated Rules

| StigRuleId | Severity | RuleType | DscResource | DuplicateOf | Title |
| :---- | :---- | :---- | :---- | :---- | :---- |
| V-76681 | Medium | IisLoggingRule | xIISLogging |  | SRG-APP-000092-WSR-000055 |
| V-76683 | Medium | IisLoggingRule | xIISLogging |  | SRG-APP-000092-WSR-000055 |
| V-76687 | Medium | IisLoggingRule | xIISLogging |  | SRG-APP-000099-WSR-000061 |
| V-76689 | Medium | IisLoggingRule | xIISLogging |  | SRG-APP-000100-WSR-000064 |
| V-76711.a | Medium | MimeTypeRule | xIisMimeTypeMapping |  | SRG-APP-000141-WSR-000081 |
| V-76711.b | Medium | MimeTypeRule | xIisMimeTypeMapping |  | SRG-APP-000141-WSR-000081 |
| V-76711.c | Medium | MimeTypeRule | xIisMimeTypeMapping |  | SRG-APP-000141-WSR-000081 |
| V-76711.d | Medium | MimeTypeRule | xIisMimeTypeMapping |  | SRG-APP-000141-WSR-000081 |
| V-76711.e | Medium | MimeTypeRule | xIisMimeTypeMapping |  | SRG-APP-000141-WSR-000081 |
| V-76745 | Medium | PermissionRule | NTFSAccessEntry |  | SRG-APP-000340-WSR-000029 |
| V-76759.a | High | RegistryRule | Registry |  | SRG-APP-000439-WSR-000156 |
| V-76759.b | High | RegistryRule | Registry |  | SRG-APP-000439-WSR-000156 |
| V-76759.c | High | RegistryRule | Registry |  | SRG-APP-000439-WSR-000156 |
| V-76759.d | High | RegistryRule | Registry |  | SRG-APP-000439-WSR-000156 |
| V-76759.e | High | RegistryRule | Registry |  | SRG-APP-000439-WSR-000156 |
| V-76759.f | High | RegistryRule | Registry |  | SRG-APP-000439-WSR-000156 |
| V-76759.g | High | RegistryRule | Registry |  | SRG-APP-000439-WSR-000156 |
| V-76759.h | High | RegistryRule | Registry |  | SRG-APP-000439-WSR-000156 |
| V-76725 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  | SRG-APP-000223-WSR-000011 |
| V-76727.a | Medium | WebConfigurationPropertyRule | None | V-76725 | SRG-APP-000223-WSR-000145 |
| V-76727.b | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  | SRG-APP-000223-WSR-000145 |
| V-76731.a | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  | SRG-APP-000231-WSR-000144 |
| V-76731.b | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  | SRG-APP-000231-WSR-000144 |
| V-76733 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  | SRG-APP-000251-WSR-000157 |
| V-76737 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  | SRG-APP-000266-WSR-000159 |
| V-76757 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  | SRG-APP-000439-WSR-000152 |
| V-76769.a | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  | SRG-APP-000516-WSR-000174 |
| V-76769.b | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  | SRG-APP-000516-WSR-000174 |
| V-76713 | Medium | WindowsFeatureRule | WindowsFeature |  | SRG-APP-000141-WSR-000085 |

## Document / Manual Rules (Not Automated)

| StigRuleId | Severity | RuleType | Title |
| :---- | :---- | :---- | :---- |
| V-76679 | Medium | DocumentRule | SRG-APP-000015-WSR-000014 |
| V-76699 | Medium | DocumentRule | SRG-APP-000141-WSR-000015 |
| V-76701 | Medium | DocumentRule | SRG-APP-000141-WSR-000075 |
| V-76719 | High | DocumentRule | SRG-APP-000211-WSR-000030 |
| V-76729 | Medium | DocumentRule | SRG-APP-000225-WSR-000074 |
| V-76735 | Medium | DocumentRule | SRG-APP-000266-WSR-000142 |
| V-76739 | High | DocumentRule | SRG-APP-000315-WSR-000003 |
| V-76743 | Medium | DocumentRule | SRG-APP-000316-WSR-000170 |
| V-76747 | Medium | DocumentRule | SRG-APP-000357-WSR-000150 |
| V-76749 | Medium | DocumentRule | SRG-APP-000380-WSR-000072 |
| V-76751 | Medium | DocumentRule | SRG-APP-000383-WSR-000175 |
| V-76755 | Medium | DocumentRule | SRG-APP-000435-WSR-000148 |
| V-76761 | Medium | DocumentRule | SRG-APP-000439-WSR-000156 |
| V-76767 | Medium | DocumentRule | SRG-APP-000516-WSR-000174 |
| V-76685 | Medium | ManualRule | SRG-APP-000098-WSR-000060 |
| V-76695 | Medium | ManualRule | SRG-APP-000120-WSR-000070 |
| V-76697 | Medium | ManualRule | SRG-APP-000125-WSR-000071 |
| V-76703 | Medium | ManualRule | SRG-APP-000141-WSR-000076 |
| V-76705 | High | ManualRule | SRG-APP-000141-WSR-000077 |
| V-76707 | Medium | ManualRule | SRG-APP-000141-WSR-000078 |
| V-76709 | Medium | ManualRule | SRG-APP-000141-WSR-000080 |
| V-76715 | Medium | ManualRule | SRG-APP-000175-WSR-000095 |
| V-76717 | Medium | ManualRule | SRG-APP-000206-WSR-000128 |
| V-76721 | Medium | ManualRule | SRG-APP-000211-WSR-000129 |
| V-76741 | Medium | ManualRule | SRG-APP-000315-WSR-000004 |
| V-76753 | Medium | ManualRule | SRG-APP-000383-WSR-000175 |
| V-76765 | High | ManualRule | SRG-APP-000516-WSR-000079 |
| V-76771 | Medium | ManualRule | SRG-APP-000516-WSR-000174 |
| V-95633 | Medium | ManualRule | SRG-APP-000001-WSR-000001 |
