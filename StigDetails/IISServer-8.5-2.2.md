# [IIS 8-5 Server STIG, Version 2.2](https://github.com/Microsoft/PowerStig/wiki/IISServer-8.5-2.2)

**Title:** Microsoft IIS 8.5 Server Security Technical Implementation Guide  
**Version:** 2  
**Release:** Release: 2 Benchmark Date: 23 Apr 2021 3.2.2.36079 1.10.0  
**FileName:** U_MS_IIS_8-5_Server_STIG_V2R2_Manual-xccdf.xml  
**Created:** 8/23/2021  
**Description:** This Security Technical Implementation Guide is published as a tool to improve the security of Department of Defense (DoD) information systems. The requirements are derived from the National Institute of Standards and Technology (NIST) 800-53 and related documents. Comments or proposed revisions to this document should be sent via email to the following address: disa.stig_spt@mail.mil.  
**Total Stig Rule Coverage:** **30** of **59** rules are automated; **51%**

* **High (CAT I):** **9** of **13** rules are automated
* **Medium (CAT II):** **21** of **46** rules are automated
* **Low (CAT III):** **0** of **0** rules are automated

## Automated Rules

| StigRuleId | Severity | RuleType | DscResource | DuplicateOf |
| :---- | :---- | :---- | :---- | :---- |
| V-214400 | Medium | IisLoggingRule | xWebAdministration |  |
| V-214401 | Medium | IisLoggingRule | xIISLogging |  |
| V-214403 | Medium | IisLoggingRule | xIISLogging |  |
| V-214404 | Medium | IisLoggingRule | xIISLogging |  |
| V-214413.a | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-214413.b | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-214413.c | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-214413.d | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-214413.e | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-214429 | Medium | PermissionRule | NTFSAccessEntry |  |
| V-214436.a | High | RegistryRule | Registry |  |
| V-214436.b | High | RegistryRule | Registry |  |
| V-214436.c | High | RegistryRule | Registry |  |
| V-214436.d | High | RegistryRule | Registry |  |
| V-214436.e | High | RegistryRule | Registry |  |
| V-214436.f | High | RegistryRule | Registry |  |
| V-214436.g | High | RegistryRule | Registry |  |
| V-214436.h | High | RegistryRule | Registry |  |
| V-214436.i | High | RegistryRule | Registry |  |
| V-214419 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-214420.a | Medium | WebConfigurationPropertyRule | None | V-214419 |
| V-214420.b | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-214422.a | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-214422.b | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-214423 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-214425 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-214435 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-214440.a | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-214440.b | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-214414 | Medium | WindowsFeatureRule | WindowsFeature |  |

## Document / Manual Rules (Not Automated)

| StigRuleId | Severity | RuleType |
| :---- | :---- | :---- |
| V-214399 | Medium | DocumentRule |
| V-214407 | Medium | DocumentRule |
| V-214408 | Medium | DocumentRule |
| V-214417 | High | DocumentRule |
| V-214421 | Medium | DocumentRule |
| V-214424 | Medium | DocumentRule |
| V-214426 | High | DocumentRule |
| V-214428 | Medium | DocumentRule |
| V-214430 | Medium | DocumentRule |
| V-214431 | Medium | DocumentRule |
| V-214432 | Medium | DocumentRule |
| V-214434 | Medium | DocumentRule |
| V-214437 | Medium | DocumentRule |
| V-228573 | Medium | DocumentRule |
| V-214402 | Medium | ManualRule |
| V-214405 | Medium | ManualRule |
| V-214406 | Medium | ManualRule |
| V-214409 | Medium | ManualRule |
| V-214410 | High | ManualRule |
| V-214411 | Medium | ManualRule |
| V-214412 | Medium | ManualRule |
| V-214415 | Medium | ManualRule |
| V-214416 | Medium | ManualRule |
| V-214418 | Medium | ManualRule |
| V-214427 | Medium | ManualRule |
| V-214433 | Medium | ManualRule |
| V-214438 | High | ManualRule |
| V-214441 | Medium | ManualRule |
| V-214442 | Medium | ManualRule |
