# [VMware vSphere 6-5 ESXi STIG, Version 2.3](https://github.com/Microsoft/PowerStig/wiki/Vsphere-6.5-2.3)

**Title:** VMware vSphere 6.5 ESXi Security Technical Implementation Guide  
**Version:** 2  
**Release:** Release: 3 Benchmark Date: 27 Oct 2021 3.2.2.36079 1.10.0  
**FileName:** U_VMW_vSphere_6-5_ESXi_STIG_V2R3_Manual-xccdf.xml  
**Created:** 11/3/2021  
**Description:** This Security Technical Implementation Guide is published as a tool to improve the security of Department of Defense (DoD) information systems. The requirements are derived from the National Institute of Standards and Technology (NIST) 800-53 and related documents. Comments or proposed revisions to this document should be sent via email to the following address: disa.stig_spt@mail.mil.  
**Total Stig Rule Coverage:** **32** of **77** rules are automated; **42%**

* **High (CAT I):** **3** of **7** rules are automated
* **Medium (CAT II):** **24** of **51** rules are automated
* **Low (CAT III):** **5** of **19** rules are automated

## Automated Rules

| StigRuleId | Severity | RuleType | DscResource | DuplicateOf |
| :---- | :---- | :---- | :---- | :---- |
| V-207648 | High | VsphereAcceptanceLevelRule | VMHostAcceptanceLevel |  |
| V-207603 | Low | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-207605 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-207606 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-207607 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-207608 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-207609 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-207631 | Low | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-207632 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-207635 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-207642 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-207643 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-207644 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-207646 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-207654 | Low | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-207657 | Low | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-207661 | Medium | VsphereAdvancedSettingsRule | VMHostAdvancedSettings |  |
| V-207645 | Low | VsphereKernelActiveDumpPartitionRule | VMHostKernelActiveDumpPartition |  |
| V-207647.b | Medium | VsphereNtpSettingsRule | VMHostNtpSettings |  |
| V-207658.a | Medium | VspherePortGroupSecurityRule | VMHostVssPortGroupSecurity |  |
| V-207659.a | High | VspherePortGroupSecurityRule | VMHostVssPortGroupSecurity |  |
| V-207660.a | Medium | VspherePortGroupSecurityRule | VMHostVssPortGroupSecurity |  |
| V-207662 | Medium | VspherePortGroupSecurityRule | VMHostVssPortGroupSecurity |  |
| V-207663 | Medium | VspherePortGroupSecurityRule | VMHostVssPortGroupSecurity |  |
| V-207664 | Medium | VspherePortGroupSecurityRule | VMHostVssPortGroupSecurity |  |
| V-207636 | Medium | VsphereServiceRule | VMHostService |  |
| V-207637 | Medium | VsphereServiceRule | VMHostService |  |
| V-207647.a | Medium | VsphereServiceRule | VMHostService |  |
| V-207652 | Medium | VsphereSnmpAgentRule | VMHostSnmpAgent |  |
| V-207658.b | Medium | VsphereVssSecurityRule | VMHostVssSecurity |  |
| V-207659.b | High | VsphereVssSecurityRule | VMHostVssSecurity |  |
| V-207660.b | Medium | VsphereVssSecurityRule | VMHostVssSecurity |  |

## Document / Manual Rules (Not Automated)

| StigRuleId | Severity | RuleType |
| :---- | :---- | :---- |
| V-207640 | Low | DocumentRule |
| V-207665 | Medium | DocumentRule |
| V-207666 | Low | DocumentRule |
| V-207667 | Medium | DocumentRule |
| V-207602 | Medium | ManualRule |
| V-207604 | Low | ManualRule |
| V-207610 | Medium | ManualRule |
| V-207611 | Medium | ManualRule |
| V-207612 | High | ManualRule |
| V-207613 | Medium | ManualRule |
| V-207614 | Medium | ManualRule |
| V-207615 | Low | ManualRule |
| V-207616 | High | ManualRule |
| V-207617 | Medium | ManualRule |
| V-207618 | Medium | ManualRule |
| V-207619 | Low | ManualRule |
| V-207620 | Low | ManualRule |
| V-207621 | Medium | ManualRule |
| V-207622 | Medium | ManualRule |
| V-207623 | Low | ManualRule |
| V-207624 | Medium | ManualRule |
| V-207625 | Medium | ManualRule |
| V-207626 | Medium | ManualRule |
| V-207627 | Low | ManualRule |
| V-207628 | Low | ManualRule |
| V-207629 | Medium | ManualRule |
| V-207630 | Medium | ManualRule |
| V-207633 | Medium | ManualRule |
| V-207634 | Medium | ManualRule |
| V-207638 | Low | ManualRule |
| V-207639 | Medium | ManualRule |
| V-207641 | Low | ManualRule |
| V-207649 | Medium | ManualRule |
| V-207650 | Medium | ManualRule |
| V-207651 | Low | ManualRule |
| V-207653 | Low | ManualRule |
| V-207655 | Medium | ManualRule |
| V-207656 | Medium | ManualRule |
| V-207668 | Medium | ManualRule |
| V-207669 | High | ManualRule |
| V-207670 | High | ManualRule |
| V-207673 | Medium | ManualRule |
| V-207674 | Medium | ManualRule |
| V-207675 | Low | ManualRule |
| V-251043 | Medium | ManualRule |
