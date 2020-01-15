# [IIS 8-5 Site STIG, Version 1.8](https://github.com/Microsoft/PowerStig/wiki/IISSite-8.5-1.8)

**Title:** IIS 8.5 Site Security Technical Implementation Guide  
**Version:** 1  
**Release:** Release: 8 Benchmark Date: 26 Jul 2019  
**FileName:** U_MS_IIS_8-5_Site_V1R8_Manual-xccdf.xml  
**Created:** 12/5/2019  
**Description:** This Security Technical Implementation Guide is published as a tool to improve the security of Department of Defense (DoD) information systems. The requirements are derived from the National Institute of Standards and Technology (NIST) 800-53 and related documents. Comments or proposed revisions to this document should be sent via email to the following address: disa.stig_spt@mail.mil.  
**StigRuleCoverage:** **41** of **58** rules are automated; **71%**  

## Automated Rules

| StigRuleId | Severity | RuleType | DscResource | DuplicateOf |
| :---- | :---- | :---- | :---- | :---- |
| V-76783 | Medium | IisLoggingRule | XWebsite |  |
| V-76785 | Medium | IisLoggingRule | XWebsite |  |
| V-76789 | Medium | IisLoggingRule | XWebsite |  |
| V-76791 | Medium | IisLoggingRule | XWebsite |  |
| V-76797.a | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-76797.b | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-76797.c | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-76797.d | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-76797.e | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-76779 | Medium | SslSettingsRule | xSslSettings |  |
| V-76781 | Medium | SslSettingsRule | None | V-76779 |
| V-76809 | Medium | SslSettingsRule | xSslSettings |  |
| V-76851 | Medium | SslSettingsRule | xSslSettings |  |
| V-76861 | Medium | SslSettingsRule | None | V-76851 |
| V-76839 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-76867 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-76869 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-76871 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-76873 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-76875 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-76877 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-76879 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-76881 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-76775 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76777 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76805 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76813 | Medium | WebConfigurationPropertyRule | None | V-76775 |
| V-76817 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76819 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76821 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76823 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76825 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76827 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76829 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76835 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76837 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76841 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76855 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76859.a | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76859.b | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-76803 | Medium | WindowsFeatureRule | WindowsFeature |  |

## Document / Manual Rules (Not Automated)

| StigRuleId | Severity | RuleType |
| :---- | :---- | :---- |
| V-76799 | Medium | DocumentRule |
| V-76801 | Medium | DocumentRule |
| V-76807 | Medium | DocumentRule |
| V-76831 | Medium | DocumentRule |
| V-76843 | Medium | DocumentRule |
| V-76845 | Medium | DocumentRule |
| V-76847 | Medium | DocumentRule |
| V-76787 | Medium | ManualRule |
| V-76795 | Medium | ManualRule |
| V-76811 | High | ManualRule |
| V-76815 | Medium | ManualRule |
| V-76849 | Medium | ManualRule |
| V-76865 | Medium | ManualRule |
| V-76885 | Medium | ManualRule |
| V-76887 | Medium | ManualRule |
| V-76889 | Medium | ManualRule |
| V-76891 | Medium | ManualRule |
