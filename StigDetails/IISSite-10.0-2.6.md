# [IIS 10-0 Site STIG, Version 2.6](https://github.com/Microsoft/PowerStig/wiki/IISSite-10.0-2.6)

**Title:** Microsoft IIS 10.0 Site Security Technical Implementation Guide  
**Version:** 2  
**Release:** Release: 6 Benchmark Date: 27 Jul 2022 3.3.0.27375 1.10.0  
**FileName:** U_MS_IIS_10-0_Site_STIG_V2R6_Manual-xccdf.xml  
**Created:** 8/23/2022  
**Description:** This Security Technical Implementation Guide is published as a tool to improve the security of Department of Defense (DoD) information systems. The requirements are derived from the National Institute of Standards and Technology (NIST) 800-53 and related documents. Comments or proposed revisions to this document should be sent via email to the following address: disa.stig_spt@mail.mil.  
**Total Stig Rule Coverage:** **35** of **50** rules are automated; **70%**

* **High (CAT I):** **0** of **1** rules are automated
* **Medium (CAT II):** **35** of **49** rules are automated
* **Low (CAT III):** **0** of **0** rules are automated

## Automated Rules

| StigRuleId | Severity | RuleType | DscResource | DuplicateOf |
| :---- | :---- | :---- | :---- | :---- |
| V-218739 | Medium | IisLoggingRule | XWebsite |  |
| V-218741 | Medium | IisLoggingRule | XWebsite |  |
| V-218742 | Medium | IisLoggingRule | XWebsite |  |
| V-218743.a | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-218743.b | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-218743.c | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-218743.d | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-218743.e | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-218737 | Medium | SslSettingsRule | xSslSettings |  |
| V-218738 | Medium | SslSettingsRule | None | V-218737 |
| V-218749 | Medium | SslSettingsRule | xSslSettings |  |
| V-218768 | Medium | SslSettingsRule | xSslSettings |  |
| V-218762 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-218772 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-218775 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-218776 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-218777 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-218778 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-218735 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-218736 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-218751 | Medium | WebConfigurationPropertyRule | None | V-218735 |
| V-218753 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-218754 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-218755 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-218756 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-218757 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-218758 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-218759 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-218760 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-218761 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-218763 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-218769 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-218770.a | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-218770.b | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-218746 | Medium | WindowsFeatureRule | WindowsFeature |  |

## Document / Manual Rules (Not Automated)

| StigRuleId | Severity | RuleType |
| :---- | :---- | :---- |
| V-218744 | Medium | DocumentRule |
| V-218745 | Medium | DocumentRule |
| V-218748 | Medium | DocumentRule |
| V-218764 | Medium | DocumentRule |
| V-218765 | Medium | DocumentRule |
| V-218766 | Medium | DocumentRule |
| V-218740 | Medium | ManualRule |
| V-218750 | High | ManualRule |
| V-218752 | Medium | ManualRule |
| V-218767 | Medium | ManualRule |
| V-218771 | Medium | ManualRule |
| V-218779 | Medium | ManualRule |
| V-218780 | Medium | ManualRule |
| V-218781 | Medium | ManualRule |
| V-218782 | Medium | ManualRule |
