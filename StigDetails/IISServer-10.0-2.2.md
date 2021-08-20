# [IIS 10-0 Server STIG, Version 2.2](https://github.com/Microsoft/PowerStig/wiki/IISServer-10.0-2.2)

**Title:** Microsoft IIS 10.0 Server Security Technical Implementation Guide  
**Version:** 2  
**Release:** Release: 2 Benchmark Date: 23 Apr 2021 3.2.2.36079 1.10.0  
**FileName:** U_MS_IIS_10-0_Server_STIG_V2R2_Manual-xccdf.xml  
**Created:** 6/22/2021  
**Description:** This Security Technical Implementation Guide is published as a tool to improve the security of Department of Defense (DoD) information systems. The requirements are derived from the National Institute of Standards and Technology (NIST) 800-53 and related documents. Comments or proposed revisions to this document should be sent via email to the following address: disa.stig_spt@mail.mil.  
**Total Stig Rule Coverage:** **31** of **62** rules are automated; **50%**

* **High (CAT I):** **9** of **13** rules are automated
* **Medium (CAT II):** **21** of **46** rules are automated
* **Low (CAT III):** **1** of **3** rules are automated

## Automated Rules

| StigRuleId | Severity | RuleType | DscResource | DuplicateOf |
| :---- | :---- | :---- | :---- | :---- |
| V-218785 | Medium | IisLoggingRule | xIISLogging |  |
| V-218786 | Medium | IisLoggingRule | xIISLogging |  |
| V-218788 | Medium | IisLoggingRule | xIISLogging |  |
| V-218789 | Medium | IisLoggingRule | xIISLogging |  |
| V-218798.a | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-218798.b | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-218798.c | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-218798.d | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-218798.e | Medium | MimeTypeRule | xIisMimeTypeMapping |  |
| V-218814 | Medium | PermissionRule | NTFSAccessEntry |  |
| V-218821.a | High | RegistryRule | Registry |  |
| V-218821.b | High | RegistryRule | Registry |  |
| V-218821.c | High | RegistryRule | Registry |  |
| V-218821.d | High | RegistryRule | Registry |  |
| V-218821.e | High | RegistryRule | Registry |  |
| V-218821.f | High | RegistryRule | Registry |  |
| V-218821.g | High | RegistryRule | Registry |  |
| V-218821.h | High | RegistryRule | Registry |  |
| V-218821.i | High | RegistryRule | Registry |  |
| V-241788 | Low | RegistryRule | Registry |  |
| V-218804 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-218805.a | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-218805.b | Medium | WebConfigurationPropertyRule | None | V-218804 |
| V-218807.a | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-218807.b | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-218808 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-218810 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-218820 | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-218824.a | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-218824.b | Medium | WebConfigurationPropertyRule | xWebConfigKeyValue |  |
| V-218799 | Medium | WindowsFeatureRule | WindowsFeature |  |

## Document / Manual Rules (Not Automated)

| StigRuleId | Severity | RuleType |
| :---- | :---- | :---- |
| V-218784 | Medium | DocumentRule |
| V-218792 | Medium | DocumentRule |
| V-218793 | Medium | DocumentRule |
| V-218802 | High | DocumentRule |
| V-218806 | Medium | DocumentRule |
| V-218809 | Medium | DocumentRule |
| V-218811 | High | DocumentRule |
| V-218813 | Medium | DocumentRule |
| V-218815 | Medium | DocumentRule |
| V-218816 | Medium | DocumentRule |
| V-218817 | Medium | DocumentRule |
| V-218819 | Medium | DocumentRule |
| V-218822 | Medium | DocumentRule |
| V-218827 | Low | DocumentRule |
| V-228572 | Medium | DocumentRule |
| V-241789 | Low | DocumentRule |
| V-218787 | Medium | ManualRule |
| V-218790 | Medium | ManualRule |
| V-218791 | Medium | ManualRule |
| V-218794 | Medium | ManualRule |
| V-218795 | High | ManualRule |
| V-218796 | Medium | ManualRule |
| V-218797 | Medium | ManualRule |
| V-218800 | Medium | ManualRule |
| V-218801 | Medium | ManualRule |
| V-218803 | Medium | ManualRule |
| V-218812 | Medium | ManualRule |
| V-218818 | Medium | ManualRule |
| V-218823 | High | ManualRule |
| V-218825 | Medium | ManualRule |
| V-218826 | Medium | ManualRule |
