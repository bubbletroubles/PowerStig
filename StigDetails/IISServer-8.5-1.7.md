# [IIS 8-5 Server STIG, Version 1.7](https://github.com/Microsoft/PowerStig/wiki/IISServer-8.5-1.7)

**Title:** IIS 8.5 Server Security Technical Implementation Guide  
**Version:** 1  
**Release:** Release: 7 Benchmark Date: 26 Apr 2019  
**FileName:** U_MS_IIS_8-5_Server_STIG_V1R7_Manual-xccdf.xml  
**Created:** 9/19/2019  
**Description:** This Security Technical Implementation Guide is published as a tool to improve the security of Department of Defense (DoD) information systems. The requirements are derived from the National Institute of Standards and Technology (NIST) 800-53 and related documents. Comments or proposed revisions to this document should be sent via email to the following address: disa.stig_spt@mail.mil.  
**StigRuleCoverage:** **29** of **58** rules are automated; **50%**  

| StigRuleId | RuleType | DscResource | DuplicateOf |
| :---- | :---- | :---- | :---- |
| V-76681 | IisLoggingRule | xIISLogging |  |
| V-76683 | IisLoggingRule | xIISLogging |  |
| V-76687 | IisLoggingRule | xIISLogging |  |
| V-76689 | IisLoggingRule | xIISLogging |  |
| V-76711.a | MimeTypeRule | xIisMimeTypeMapping |  |
| V-76711.b | MimeTypeRule | xIisMimeTypeMapping |  |
| V-76711.c | MimeTypeRule | xIisMimeTypeMapping |  |
| V-76711.d | MimeTypeRule | xIisMimeTypeMapping |  |
| V-76711.e | MimeTypeRule | xIisMimeTypeMapping |  |
| V-76745 | PermissionRule | NTFSAccessEntry |  |
| V-76759.a | RegistryRule | Registry |  |
| V-76759.b | RegistryRule | Registry |  |
| V-76759.c | RegistryRule | Registry |  |
| V-76759.d | RegistryRule | Registry |  |
| V-76759.e | RegistryRule | Registry |  |
| V-76759.f | RegistryRule | Registry |  |
| V-76759.g | RegistryRule | Registry |  |
| V-76759.h | RegistryRule | Registry |  |
| V-76725 | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76727.a | WebConfigurationPropertyRule | None | V-76725 |
| V-76727.b | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76731.a | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76731.b | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76733 | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76737 | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76757 | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76769.a | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76769.b | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76713 | WindowsFeatureRule | WindowsFeature |  |
