# [Microsoft Windows 2012 Server Domain Name System STIG, Version 1.12](https://github.com/Microsoft/PowerStig/wiki/WindowsDnsServer-2012R2-1.12)

**Title:** Microsoft Windows 2012 Server Domain Name System Security Technical Implementation Guide  
**Version:** 1  
**Release:** Release: 12 Benchmark Date: 26 Jul 2019  
**FileName:** U_MS_Windows_2012_Server_DNS_STIG_V1R12_Manual-xccdf.xml  
**Created:** 12/5/2019  
**Description:** The Microsoft Windows 2012 Server Domain Name System Security Technical Implementation Guide is published as a tool to improve the security of Department of Defense (DoD) information systems. The requirements are derived from the National Institute of Standards and Technology (NIST) 800-53 and related documents. Comments or proposed revisions to this document should be sent via e-mail to the following address: disa.stig_spt@mail.mil.  
**StigRuleCoverage:** **22** of **93** rules are automated; **24%**  

| StigRuleId | RuleType | DscResource | DuplicateOf |
| :---- | :---- | :---- | :---- |
| V-58615 | DnsServerRootHintRule | Script |  |
| V-58543 | DnsServerSettingRule | xDnsServerSetting |  |
| V-58549 | DnsServerSettingRule | None | V-58543 |
| V-58579 | DnsServerSettingRule | xDnsServerSetting |  |
| V-58581 | DnsServerSettingRule | None | V-58579 |
| V-58553.a | PermissionRule | NTFSAccessEntry |  |
| V-58641 | PermissionRule | NTFSAccessEntry |  |
| V-58643 | PermissionRule | None | V-58641 |
| V-58645 | PermissionRule | None | V-58641 |
| V-58627 | RegistryRule | Registry |  |
| V-58553.b | UserRightRule | UserRightsAssignment |  |
| V-58697.a | UserRightRule | UserRightsAssignment |  |
| V-58697.b | UserRightRule | UserRightsAssignment |  |
| V-58697.c | UserRightRule | UserRightsAssignment |  |
| V-58555 | WinEventLogRule | xWinEventLog |  |
| V-58561 | WinEventLogRule | None | V-58555 |
| V-58563 | WinEventLogRule | None | V-58555 |
| V-58565 | WinEventLogRule | None | V-58555 |
| V-58567 | WinEventLogRule | None | V-58555 |
| V-58569 | WinEventLogRule | None | V-58555 |
| V-58571 | WinEventLogRule | None | V-58555 |
| V-58719 | WinEventLogRule | None | V-58555 |
