## [IIS 8-5 Site STIG, Version 1.9](.\StigDetail\IISSite-8.5-1.9.md)

**Title:** IIS 8.5 Site Security Technical Implementation Guide  
**Version:** 1  
**Release:** Release: 9 Benchmark Date: 25 Oct 2019  
**FileName:** U_MS_IIS_8-5_Site_V1R9_Manual-xccdf.xml  
**Created:** 11/21/2019  
**Description:** This Security Technical Implementation Guide is published as a tool to improve the security of Department of Defense (DoD) information systems. The requirements are derived from the National Institute of Standards and Technology (NIST) 800-53 and related documents. Comments or proposed revisions to this document should be sent via email to the following address: disa.stig_spt@mail.mil.  
**StigRuleCoverage:** **41** of **58** rules are automated; **71%**  
| StigRuleId | RuleType | DscResource | DuplicateOf
| :---- | :---- | :---- | :---- |
| V-76783 | IisLoggingRule | XWebsite |  |
| V-76785 | IisLoggingRule | XWebsite |  |
| V-76789 | IisLoggingRule | XWebsite |  |
| V-76791 | IisLoggingRule | XWebsite |  |
| V-76797.a | MimeTypeRule | xIisMimeTypeMapping |  |
| V-76797.b | MimeTypeRule | xIisMimeTypeMapping |  |
| V-76797.c | MimeTypeRule | xIisMimeTypeMapping |  |
| V-76797.d | MimeTypeRule | xIisMimeTypeMapping |  |
| V-76797.e | MimeTypeRule | xIisMimeTypeMapping |  |
| V-76779 | SslSettingsRule | xSslSettings |  |
| V-76781 | SslSettingsRule | None | V-76779 |
| V-76809 | SslSettingsRule | xSslSettings |  |
| V-76851 | SslSettingsRule | xSslSettings |  |
| V-76861 | SslSettingsRule | None | V-76851 |
| V-76839 | WebAppPoolRule | xWebAppPool |  |
| V-76867 | WebAppPoolRule | xWebAppPool |  |
| V-76869 | WebAppPoolRule | xWebAppPool |  |
| V-76871 | WebAppPoolRule | xWebAppPool |  |
| V-76873 | WebAppPoolRule | xWebAppPool |  |
| V-76875 | WebAppPoolRule | xWebAppPool |  |
| V-76877 | WebAppPoolRule | xWebAppPool |  |
| V-76879 | WebAppPoolRule | xWebAppPool |  |
| V-76881 | WebAppPoolRule | xWebAppPool |  |
| V-76775 | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76777 | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76805 | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76813 | WebConfigurationPropertyRule | None | V-76775 |
| V-76817 | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76819 | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76821 | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76823 | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76825 | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76827 | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76829 | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76835 | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76837 | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76841 | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76855 | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76859.a | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76859.b | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76803 | WindowsFeatureRule | WindowsFeature |  |
