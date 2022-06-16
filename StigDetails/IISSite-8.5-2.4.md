# [IIS 8-5 Site STIG, Version 2.4](https://github.com/Microsoft/PowerStig/wiki/IISSite-8.5-2.4)

**Title:** Microsoft IIS 8.5 Site Security Technical Implementation Guide  
**Version:** 2  
**Release:** Release: 4 Benchmark Date: 27 Oct 2021 3.2.2.36079 1.10.0  
**FileName:** U_MS_IIS_8-5_Site_STIG_V2R4_Manual-xccdf.xml  
**Created:** 11/3/2021  
**Description:** This Security Technical Implementation Guide is published as a tool to improve the security of Department of Defense (DoD) information systems. The requirements are derived from the National Institute of Standards and Technology (NIST) 800-53 and related documents. Comments or proposed revisions to this document should be sent via email to the following address: disa.stig_spt@mail.mil.  
**Total Stig Rule Coverage:** **38** of **54** rules are automated; **70%**

* **High (CAT I):** **0** of **1** rules are automated
* **Medium (CAT II):** **38** of **53** rules are automated
* **Low (CAT III):** **0** of **0** rules are automated

## Automated Rules

| StigRuleId | Severity | RuleType | DscResource | DuplicateOf |
| :---- | :---- | :---- | :---- | :---- |
| V-214448 | Medium | IisLoggingRule | xWebsite |  |
| V-214449 | Medium | IisLoggingRule | XWebsite |  |
| V-214451 | Medium | IisLoggingRule | XWebsite |  |
| V-214452 | Medium | IisLoggingRule | XWebsite |  |
| V-214454.a | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-214454.b | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-214454.c | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-214454.d | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-214454.e | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-214446 | Medium | SslSettingsRule | xSslSettings |  |
| V-214447 | Medium | SslSettingsRule | None | V-214446 |
| V-214460 | Medium | SslSettingsRule | xSslSettings |  |
| V-214480 | Medium | SslSettingsRule | xSslSettings |  |
| V-214483 | Medium | SslSettingsRule | None | V-214480 |
| V-214474 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-214485 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-214487 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-214488 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-214489 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-214490 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-214491 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-214492 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-214444 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-214445 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-214464 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-214465 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-214466 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-214467 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-214468 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-214469 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-214470 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-214472 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-214473 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-214475 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-214481 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-214482.a | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-214482.b | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-214457 | Medium | WindowsFeatureRule | WindowsFeature |  |

## Document / Manual Rules (Not Automated)

| StigRuleId | Severity | RuleType |
| :---- | :---- | :---- |
| V-214455 | Medium | DocumentRule |
| V-214456 | Medium | DocumentRule |
| V-214459 | Medium | DocumentRule |
| V-214476 | Medium | DocumentRule |
| V-214477 | Medium | DocumentRule |
| V-214478 | Medium | DocumentRule |
| V-214450 | Medium | ManualRule |
| V-214461 | High | ManualRule |
| V-214462 | Medium | ManualRule |
| V-214463 | Medium | ManualRule |
| V-214479 | Medium | ManualRule |
| V-214484 | Medium | ManualRule |
| V-214493 | Medium | ManualRule |
| V-214494 | Medium | ManualRule |
| V-214495 | Medium | ManualRule |
| V-214496 | Medium | ManualRule |
