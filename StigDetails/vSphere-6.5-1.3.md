# [VMware vSphere 6-5 ESXi STIG, Version 1.3](https://github.com/Microsoft/PowerStig/wiki/vSphere-6.5-1.3)

**Title:** VMware vSphere 6.5 ESXi Security Technical Implementation Guide  
**Version:** 1  
**Release:** Release: 3 Benchmark Date: 24 Jan 2020  
**FileName:** U_VMware_vSphere_6-5_ESXi_STIG_V1R3_Manual-xccdf.xml  
**Created:** 4/22/2020  
**Description:** This Security Technical Implementation Guide is published as a tool to improve the security of Department of Defense (DoD) information systems. The requirements are derived from the National Institute of Standards and Technology (NIST) 800-53 and related documents. Comments or proposed revisions to this document should be sent via e-mail to the following address: disa.stig_spt@mail.mil.  
**Total Stig Rule Coverage:** **34** of **89** rules are automated; **38%**

* **High (CAT I):** **3** of **7** rules are automated
* **Medium (CAT II):** **25** of **55** rules are automated
* **Low (CAT III):** **6** of **27** rules are automated

## Automated Rules

| StigRuleId | Severity | RuleType | DscResource | DuplicateOf |
| :---- | :---- | :---- | :---- | :---- |
| V-94041 | High | VsphereAcceptanceLevelRule | VMHostAcceptanceLevel |  |
| V-93951 | Low | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-93955 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-93957 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-93959 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-93961 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-93963 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-94007 | Low | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-94009 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-94015 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-94029 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-94031 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-94033 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-94037 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-94057 | Low | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-94063 | Low | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-94071 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-94483 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-94547 | Low | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-94035 | Low | VsphereKernelActiveDumpPartitionRule | VMHostKernelActiveDumpPartition |  |
| V-94039.b | Medium | VsphereNtpSettingsRule | VMHostNtpSettings |  |
| V-94065.a | Medium | VspherePortGroupSecurityRule | VMHostVssPortGroupSecurity |  |
| V-94067.a | High | VspherePortGroupSecurityRule | VMHostVssPortGroupSecurity |  |
| V-94069.a | Medium | VspherePortGroupSecurityRule | VMHostVssPortGroupSecurity |  |
| V-94073 | Medium | VspherePortGroupSecurityRule | VMHostVssPortGroupSecurity |  |
| V-94075 | Medium | VspherePortGroupSecurityRule | VMHostVssPortGroupSecurity |  |
| V-94077 | Medium | VspherePortGroupSecurityRule | VMHostVssPortGroupSecurity |  |
| V-94017 | Medium | VsphereServiceRule | VMHostService |  |
| V-94019 | Medium | VsphereServiceRule | VMHostService |  |
| V-94039.a | Medium | VsphereServiceRule | VMHostService |  |
| V-94053 | Medium | VsphereSnmpAgentRule | VMHostSnmpAgent |  |
| V-94065.b | Medium | VsphereVssSecurityRule | VMHostVssSecurity |  |
| V-94067.b | High | VsphereVssSecurityRule | VMHostVssSecurity |  |
| V-94069.b | Medium | VsphereVssSecurityRule | VMHostVssSecurity |  |

## Document / Manual Rules (Not Automated)

| StigRuleId | Severity | RuleType |
| :---- | :---- | :---- |
| V-94025 | Low | DocumentRule |
| V-94079 | Medium | DocumentRule |
| V-94081 | Low | DocumentRule |
| V-94083 | Medium | DocumentRule |
| V-94509 | Low | DocumentRule |
| V-94533 | Low | DocumentRule |
| V-93949 | Medium | ManualRule |
| V-93953 | Low | ManualRule |
| V-93965 | Medium | ManualRule |
| V-93967 | Medium | ManualRule |
| V-93969 | High | ManualRule |
| V-93971 | Medium | ManualRule |
| V-93973 | Medium | ManualRule |
| V-93975 | Low | ManualRule |
| V-93977 | High | ManualRule |
| V-93979 | Medium | ManualRule |
| V-93981 | Medium | ManualRule |
| V-93983 | Low | ManualRule |
| V-93985 | Low | ManualRule |
| V-93987 | Medium | ManualRule |
| V-93989 | Medium | ManualRule |
| V-93991 | Low | ManualRule |
| V-93993 | Medium | ManualRule |
| V-93995 | Medium | ManualRule |
| V-93997 | Medium | ManualRule |
| V-93999 | Low | ManualRule |
| V-94001 | Low | ManualRule |
| V-94003 | Medium | ManualRule |
| V-94005 | Medium | ManualRule |
| V-94011 | Medium | ManualRule |
| V-94013 | Medium | ManualRule |
| V-94021 | Low | ManualRule |
| V-94023 | Medium | ManualRule |
| V-94027 | Low | ManualRule |
| V-94043 | Medium | ManualRule |
| V-94047 | Medium | ManualRule |
| V-94051 | Low | ManualRule |
| V-94055 | Low | ManualRule |
| V-94059 | Medium | ManualRule |
| V-94061 | Medium | ManualRule |
| V-94349 | Medium | ManualRule |
| V-94477 | High | ManualRule |
| V-94479 | High | ManualRule |
| V-94481 | Medium | ManualRule |
| V-94487 | Medium | ManualRule |
| V-94489 | Medium | ManualRule |
| V-94505 | Low | ManualRule |
| V-94507 | Medium | ManualRule |
| V-94511 | Low | ManualRule |
| V-94529 | Low | ManualRule |
| V-94531 | Medium | ManualRule |
| V-94535 | Low | ManualRule |
| V-94543 | Low | ManualRule |
| V-94545 | Medium | ManualRule |
| V-94549 | Low | ManualRule |
