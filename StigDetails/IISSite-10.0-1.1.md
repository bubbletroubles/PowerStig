# [IIS 10-0 Site STIG, Version 1.1](https://github.com/Microsoft/PowerStig/wiki/IISSite-10.0-1.1)

**Title:** Microsoft IIS 10.0 Site Security Technical Implementation Guide  
**Version:** 1  
**Release:** Release: 1 Benchmark Date: 20 Mar 2020  
**FileName:** U_MS_IIS_10-0_Site_V1R1_Manual-xccdf.xml  
**Created:** 5/29/2020  
**Description:** This Security Technical Implementation Guide is published as a tool to improve the security of Department of Defense (DoD) information systems. The requirements are derived from the National Institute of Standards and Technology (NIST) 800-53 and related documents. Comments or proposed revisions to this document should be sent via email to the following address: disa.stig_spt@mail.mil.  
**Total Stig Rule Coverage:** **38** of **53** rules are automated; **72%**

* **High (CAT I):** **0** of **1** rules are automated
* **Medium (CAT II):** **38** of **52** rules are automated
* **Low (CAT III):** **0** of **0** rules are automated

## Automated Rules

| StigRuleId | Severity | RuleType | DscResource | DuplicateOf |
| :---- | :---- | :---- | :---- | :---- |
| V-100199 | Medium | IisLoggingRule | XWebsite |  |
| V-100203 | Medium | IisLoggingRule | XWebsite |  |
| V-100205 | Medium | IisLoggingRule | XWebsite |  |
| V-100207.a | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-100207.b | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-100207.c | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-100207.d | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-100207.e | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-100195 | Medium | SslSettingsRule | xSslSettings |  |
| V-100197 | Medium | SslSettingsRule | None | V-100195 |
| V-100219 | Medium | SslSettingsRule | xSslSettings |  |
| V-100257 | Medium | SslSettingsRule | xSslSettings |  |
| V-100245 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-100265 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-100267 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-100269 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-100271 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-100273 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-100275 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-100277 | Medium | WebAppPoolRule | xWebAppPool |  |
| V-100191 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-100193 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-100215 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-100223 | Medium | WebConfigurationPropertyRule | None | V-100191 |
| V-100227 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-100229 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-100231 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-100233 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-100235 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-100237 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-100239 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-100241 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-100243 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-100247 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-100259 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-100261.a | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-100261.b | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-100213 | Medium | WindowsFeatureRule | WindowsFeature |  |

## Document / Manual Rules (Not Automated)

| StigRuleId | Severity | RuleType |
| :---- | :---- | :---- |
| V-100209 | Medium | DocumentRule |
| V-100211 | Medium | DocumentRule |
| V-100217 | Medium | DocumentRule |
| V-100249 | Medium | DocumentRule |
| V-100251 | Medium | DocumentRule |
| V-100253 | Medium | DocumentRule |
| V-100201 | Medium | ManualRule |
| V-100221 | High | ManualRule |
| V-100225 | Medium | ManualRule |
| V-100255 | Medium | ManualRule |
| V-100263 | Medium | ManualRule |
| V-100279 | Medium | ManualRule |
| V-100281 | Medium | ManualRule |
| V-100283 | Medium | ManualRule |
| V-100285 | Medium | ManualRule |
