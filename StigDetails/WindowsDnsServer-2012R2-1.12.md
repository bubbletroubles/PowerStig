# [Microsoft Windows 2012 Server Domain Name System STIG, Version 1.12](https://github.com/Microsoft/PowerStig/wiki/WindowsDnsServer-2012R2-1.12)

**Title:** Microsoft Windows 2012 Server Domain Name System Security Technical Implementation Guide  
**Version:** 1  
**Release:** Release: 12 Benchmark Date: 26 Jul 2019  
**FileName:** U_MS_Windows_2012_Server_DNS_STIG_V1R12_Manual-xccdf.xml  
**Created:** 12/5/2019  
**Description:** The Microsoft Windows 2012 Server Domain Name System Security Technical Implementation Guide is published as a tool to improve the security of Department of Defense (DoD) information systems. The requirements are derived from the National Institute of Standards and Technology (NIST) 800-53 and related documents. Comments or proposed revisions to this document should be sent via e-mail to the following address: disa.stig_spt@mail.mil.  
**StigRuleCoverage:** **22** of **93** rules are automated; **24%**  

## Automated Rules

| StigRuleId | Severity | RuleType | DscResource | DuplicateOf | Title |
| :---- | :---- | :---- | :---- | :---- | :---- |
| V-58615 | Medium | DnsServerRootHintRule | Script |  | SRG-APP-000516-DNS-000102 |
| V-58543 | Medium | DnsServerSettingRule | xDnsServerSetting |  | SRG-APP-000348-DNS-000042 |
| V-58549 | Medium | DnsServerSettingRule | None | V-58543 | SRG-APP-000089-DNS-000004 |
| V-58579 | Medium | DnsServerSettingRule | xDnsServerSetting |  | SRG-APP-000383-DNS-000047 |
| V-58581 | Medium | DnsServerSettingRule | None | V-58579 | SRG-APP-000383-DNS-000047 |
| V-58553.a | Medium | PermissionRule | NTFSAccessEntry |  | SRG-APP-000090-DNS-000005 |
| V-58641 | Medium | PermissionRule | NTFSAccessEntry |  | SRG-APP-000176-DNS-000017 |
| V-58643 | Medium | PermissionRule | None | V-58641 | SRG-APP-000176-DNS-000018 |
| V-58645 | Medium | PermissionRule | None | V-58641 | SRG-APP-000176-DNS-000019 |
| V-58627 | Medium | RegistryRule | Registry |  | SRG-APP-000516-DNS-000500 |
| V-58553.b | Medium | UserRightRule | UserRightsAssignment |  | SRG-APP-000090-DNS-000005 |
| V-58697.a | Medium | UserRightRule | UserRightsAssignment |  | SRG-APP-000246-DNS-000035 |
| V-58697.b | Medium | UserRightRule | UserRightsAssignment |  | SRG-APP-000246-DNS-000035 |
| V-58697.c | Medium | UserRightRule | UserRightsAssignment |  | SRG-APP-000246-DNS-000035 |
| V-58555 | Medium | WinEventLogRule | xWinEventLog |  | SRG-APP-000504-DNS-000082 |
| V-58561 | Medium | WinEventLogRule | None | V-58555 | SRG-APP-000095-DNS-000006 |
| V-58563 | Medium | WinEventLogRule | None | V-58555 | SRG-APP-000096-DNS-000007 |
| V-58565 | Medium | WinEventLogRule | None | V-58555 | SRG-APP-000097-DNS-000008 |
| V-58567 | Medium | WinEventLogRule | None | V-58555 | SRG-APP-000098-DNS-000009 |
| V-58569 | Medium | WinEventLogRule | None | V-58555 | SRG-APP-000099-DNS-000010 |
| V-58571 | Medium | WinEventLogRule | None | V-58555 | SRG-APP-000100-DNS-000011 |
| V-58719 | Medium | WinEventLogRule | None | V-58555 | SRG-APP-000504-DNS-000074 |

## Document / Manual Rules (Not Automated)

| StigRuleId | Severity | RuleType | Title |
| :---- | :---- | :---- | :---- |
| V-58547 | Medium | DocumentRule | SRG-APP-000350-DNS-000044 |
| V-58619 | Medium | DocumentRule | SRG-APP-000516-DNS-000113 |
| V-58621 | Medium | DocumentRule | SRG-APP-000516-DNS-000114 |
| V-58649 | Medium | DocumentRule | SRG-APP-000401-DNS-000051 |
| V-58695 | Medium | DocumentRule | SRG-APP-000428-DNS-000061 |
| V-58709 | Medium | DocumentRule | SRG-APP-000451-DNS-000069 |
| V-58711 | Medium | DocumentRule | SRG-APP-000268-DNS-000039 |
| V-58715 | Medium | DocumentRule | SRG-APP-000474-DNS-000073 |
| V-58717 | Medium | DocumentRule | SRG-APP-000275-DNS-000040 |
| V-58237 | Medium | ManualRule | SRG-APP-000001-DNS-000115 |
| V-58551 | Medium | ManualRule | SRG-APP-000089-DNS-000005 |
| V-58557 | Medium | ManualRule | SRG-APP-000514-DNS-000075 |
| V-58573 | Medium | ManualRule | SRG-APP-000125-DNS-000012 |
| V-58575 | Medium | ManualRule | SRG-APP-000214-DNS-000079 |
| V-58577 | Medium | ManualRule | SRG-APP-000218-DNS-000027 |
| V-58583 | Medium | ManualRule | SRG-APP-000383-DNS-000047 |
| V-58585 | Medium | ManualRule | SRG-APP-000383-DNS-000047 |
| V-58587 | Medium | ManualRule | SRG-APP-000440-DNS-000065 |
| V-58589 | Medium | ManualRule | SRG-APP-000516-DNS-000078 |
| V-58591 | Medium | ManualRule | SRG-APP-000516-DNS-000084 |
| V-58593 | High | ManualRule | SRG-APP-000516-DNS-000085 |
| V-58595 | Medium | ManualRule | SRG-APP-000516-DNS-000087 |
| V-58597 | Medium | ManualRule | SRG-APP-000516-DNS-000088 |
| V-58599 | High | ManualRule | SRG-APP-000516-DNS-000089 |
| V-58601 | Medium | ManualRule | SRG-APP-000516-DNS-000090 |
| V-58603 | Medium | ManualRule | SRG-APP-000516-DNS-000091 |
| V-58605 | Medium | ManualRule | SRG-APP-000516-DNS-000092 |
| V-58607 | Medium | ManualRule | SRG-APP-000516-DNS-000093 |
| V-58609 | Medium | ManualRule | SRG-APP-000516-DNS-000095 |
| V-58611 | Medium | ManualRule | SRG-APP-000516-DNS-000099 |
| V-58613 | Medium | ManualRule | SRG-APP-000516-DNS-000101 |
| V-58617 | Medium | ManualRule | SRG-APP-000516-DNS-000103 |
| V-58623 | Medium | ManualRule | SRG-APP-000516-DNS-000500 |
| V-58625 | Medium | ManualRule | SRG-APP-000516-DNS-000500 |
| V-58629 | Medium | ManualRule | SRG-APP-000142-DNS-000014 |
| V-58631 | Medium | ManualRule | SRG-APP-000390-DNS-000048 |
| V-58633 | Medium | ManualRule | SRG-APP-000158-DNS-000015 |
| V-58635 | Medium | ManualRule | SRG-APP-000394-DNS-000049 |
| V-58637 | Medium | ManualRule | SRG-APP-000001-DNS-000001 |
| V-58639 | Medium | ManualRule | SRG-APP-000347-DNS-000041 |
| V-58647 | Medium | ManualRule | SRG-APP-000176-DNS-000094 |
| V-58651 | Medium | ManualRule | SRG-APP-000516-DNS-000077 |
| V-58653 | Medium | ManualRule | SRG-APP-000213-DNS-000024 |
| V-58655 | Medium | ManualRule | SRG-APP-000420-DNS-000053 |
| V-58657 | Medium | ManualRule | SRG-APP-000420-DNS-000053 |
| V-58659 | Medium | ManualRule | SRG-APP-000421-DNS-000054 |
| V-58661 | Medium | ManualRule | SRG-APP-000422-DNS-000055 |
| V-58663 | Medium | ManualRule | SRG-APP-000422-DNS-000055 |
| V-58665 | Medium | ManualRule | SRG-APP-000214-DNS-000025 |
| V-58667 | Medium | ManualRule | SRG-APP-000215-DNS-000003 |
| V-58669 | Medium | ManualRule | SRG-APP-000215-DNS-000003 |
| V-58671 | Medium | ManualRule | SRG-APP-000215-DNS-000026 |
| V-58673 | Medium | ManualRule | SRG-APP-000215-DNS-000026 |
| V-58675 | Medium | ManualRule | SRG-APP-000215-DNS-000026 |
| V-58677 | Medium | ManualRule | SRG-APP-000423-DNS-000056 |
| V-58679 | Medium | ManualRule | SRG-APP-000424-DNS-000057 |
| V-58681 | Medium | ManualRule | SRG-APP-000425-DNS-000058 |
| V-58683 | Medium | ManualRule | SRG-APP-000426-DNS-000059 |
| V-58685 | Medium | ManualRule | SRG-APP-000219-DNS-000028 |
| V-58687 | High | ManualRule | SRG-APP-000219-DNS-000029 |
| V-58689 | Medium | ManualRule | SRG-APP-000219-DNS-000030 |
| V-58691 | Medium | ManualRule | SRG-APP-000427-DNS-000060 |
| V-58693 | Medium | ManualRule | SRG-APP-000231-DNS-000033 |
| V-58699 | Medium | ManualRule | SRG-APP-000247-DNS-000036 |
| V-58701 | Medium | ManualRule | SRG-APP-000439-DNS-000063 |
| V-58703 | Medium | ManualRule | SRG-APP-000441-DNS-000066 |
| V-58705 | Medium | ManualRule | SRG-APP-000442-DNS-000067 |
| V-58707 | Medium | ManualRule | SRG-APP-000251-DNS-000037 |
| V-58713 | Medium | ManualRule | SRG-APP-000473-DNS-000072 |
| V-58737 | Medium | ManualRule | SRG-APP-000333-DNS-000104 |
| V-58739 | Medium | ManualRule | SRG-APP-000333-DNS-000107 |
