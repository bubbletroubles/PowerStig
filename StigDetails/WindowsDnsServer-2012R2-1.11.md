# [Microsoft Windows 2012 Server Domain Name System STIG, Version 1.11](https://github.com/Microsoft/PowerStig/wiki/WindowsDnsServer-2012R2-1.11)

**Title:** Microsoft Windows 2012 Server Domain Name System Security Technical Implementation Guide  
**Version:** 1  
**Release:** Release: 11 Benchmark Date: 25 Jan 2019  
**FileName:** U_MS_Windows_2012_Server_DNS_STIG_V1R11_Manual-xccdf.xml  
**Created:** 7/19/2019  
**Description:** The Microsoft Windows 2012 Server Domain Name System Security Technical Implementation Guide is published as a tool to improve the security of Department of Defense (DoD) information systems. The requirements are derived from the National Institute of Standards and Technology (NIST) 800-53 and related documents. Comments or proposed revisions to this document should be sent via e-mail to the following address: disa.stig_spt@mail.mil.  
**Total Stig Rule Coverage:** **21** of **93** rules are automated; **23%**

* **High (CAT I):** **0** of **3** rules are automated
* **Medium (CAT II):** **21** of **90** rules are automated
* **Low (CAT III):** **0** of **0** rules are automated

## Automated Rules

| StigRuleId | Severity | RuleType | DscResource | DuplicateOf |
| :---- | :---- | :---- | :---- | :---- |
| V-58615 | Medium | DnsServerRootHintRule | Script |  |
| V-58543 | Medium | DnsServerSettingRule | xDnsServerSetting |  |
| V-58549 | Medium | DnsServerSettingRule | None | V-58543 |
| V-58579 | Medium | DnsServerSettingRule | xDnsServerSetting |  |
| V-58581 | Medium | DnsServerSettingRule | None | V-58579 |
| V-58553.a | Medium | PermissionRule | NTFSAccessEntry |  |
| V-58641 | Medium | PermissionRule | NTFSAccessEntry |  |
| V-58643 | Medium | PermissionRule | None | V-58641 |
| V-58645 | Medium | PermissionRule | None | V-58641 |
| V-58553.b | Medium | UserRightRule | UserRightsAssignment |  |
| V-58697.a | Medium | UserRightRule | UserRightsAssignment |  |
| V-58697.b | Medium | UserRightRule | UserRightsAssignment |  |
| V-58697.c | Medium | UserRightRule | UserRightsAssignment |  |
| V-58555 | Medium | WinEventLogRule | xWinEventLog |  |
| V-58561 | Medium | WinEventLogRule | None | V-58555 |
| V-58563 | Medium | WinEventLogRule | None | V-58555 |
| V-58565 | Medium | WinEventLogRule | None | V-58555 |
| V-58567 | Medium | WinEventLogRule | None | V-58555 |
| V-58569 | Medium | WinEventLogRule | None | V-58555 |
| V-58571 | Medium | WinEventLogRule | None | V-58555 |
| V-58719 | Medium | WinEventLogRule | None | V-58555 |

## Document / Manual Rules (Not Automated)

| StigRuleId | Severity | RuleType |
| :---- | :---- | :---- |
| V-58547 | Medium | DocumentRule |
| V-58619 | Medium | DocumentRule |
| V-58621 | Medium | DocumentRule |
| V-58649 | Medium | DocumentRule |
| V-58695 | Medium | DocumentRule |
| V-58709 | Medium | DocumentRule |
| V-58711 | Medium | DocumentRule |
| V-58715 | Medium | DocumentRule |
| V-58717 | Medium | DocumentRule |
| V-58237 | Medium | ManualRule |
| V-58551 | Medium | ManualRule |
| V-58557 | Medium | ManualRule |
| V-58573 | Medium | ManualRule |
| V-58575 | Medium | ManualRule |
| V-58577 | Medium | ManualRule |
| V-58583 | Medium | ManualRule |
| V-58585 | Medium | ManualRule |
| V-58587 | Medium | ManualRule |
| V-58589 | Medium | ManualRule |
| V-58591 | Medium | ManualRule |
| V-58593 | High | ManualRule |
| V-58595 | Medium | ManualRule |
| V-58597 | Medium | ManualRule |
| V-58599 | High | ManualRule |
| V-58601 | Medium | ManualRule |
| V-58603 | Medium | ManualRule |
| V-58605 | Medium | ManualRule |
| V-58607 | Medium | ManualRule |
| V-58609 | Medium | ManualRule |
| V-58611 | Medium | ManualRule |
| V-58613 | Medium | ManualRule |
| V-58617 | Medium | ManualRule |
| V-58623 | Medium | ManualRule |
| V-58625 | Medium | ManualRule |
| V-58627 | Medium | ManualRule |
| V-58629 | Medium | ManualRule |
| V-58631 | Medium | ManualRule |
| V-58633 | Medium | ManualRule |
| V-58635 | Medium | ManualRule |
| V-58637 | Medium | ManualRule |
| V-58639 | Medium | ManualRule |
| V-58647 | Medium | ManualRule |
| V-58651 | Medium | ManualRule |
| V-58653 | Medium | ManualRule |
| V-58655 | Medium | ManualRule |
| V-58657 | Medium | ManualRule |
| V-58659 | Medium | ManualRule |
| V-58661 | Medium | ManualRule |
| V-58663 | Medium | ManualRule |
| V-58665 | Medium | ManualRule |
| V-58667 | Medium | ManualRule |
| V-58669 | Medium | ManualRule |
| V-58671 | Medium | ManualRule |
| V-58673 | Medium | ManualRule |
| V-58675 | Medium | ManualRule |
| V-58677 | Medium | ManualRule |
| V-58679 | Medium | ManualRule |
| V-58681 | Medium | ManualRule |
| V-58683 | Medium | ManualRule |
| V-58685 | Medium | ManualRule |
| V-58687 | High | ManualRule |
| V-58689 | Medium | ManualRule |
| V-58691 | Medium | ManualRule |
| V-58693 | Medium | ManualRule |
| V-58699 | Medium | ManualRule |
| V-58701 | Medium | ManualRule |
| V-58703 | Medium | ManualRule |
| V-58705 | Medium | ManualRule |
| V-58707 | Medium | ManualRule |
| V-58713 | Medium | ManualRule |
| V-58737 | Medium | ManualRule |
| V-58739 | Medium | ManualRule |
