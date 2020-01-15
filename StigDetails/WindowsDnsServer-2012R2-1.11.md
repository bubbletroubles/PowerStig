# [Microsoft Windows 2012 Server Domain Name System STIG, Version 1.11](https://github.com/Microsoft/PowerStig/wiki/WindowsDnsServer-2012R2-1.11)

**Title:** Microsoft Windows 2012 Server Domain Name System Security Technical Implementation Guide  
**Version:** 1  
**Release:** Release: 11 Benchmark Date: 25 Jan 2019  
**FileName:** U_MS_Windows_2012_Server_DNS_STIG_V1R11_Manual-xccdf.xml  
**Created:** 7/19/2019  
**Description:** The Microsoft Windows 2012 Server Domain Name System Security Technical Implementation Guide is published as a tool to improve the security of Department of Defense (DoD) information systems. The requirements are derived from the National Institute of Standards and Technology (NIST) 800-53 and related documents. Comments or proposed revisions to this document should be sent via e-mail to the following address: disa.stig_spt@mail.mil.  
**StigRuleCoverage:** **21** of **93** rules are automated; **23%**  

## Automated Rules

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

## Document / Manual Rules (Not Automated)

| StigRuleId | RuleType |
| :---- | :---- |
| V-58547 | DocumentRule |
| V-58619 | DocumentRule |
| V-58621 | DocumentRule |
| V-58649 | DocumentRule |
| V-58695 | DocumentRule |
| V-58709 | DocumentRule |
| V-58711 | DocumentRule |
| V-58715 | DocumentRule |
| V-58717 | DocumentRule |
| V-58237 | ManualRule |
| V-58551 | ManualRule |
| V-58557 | ManualRule |
| V-58573 | ManualRule |
| V-58575 | ManualRule |
| V-58577 | ManualRule |
| V-58583 | ManualRule |
| V-58585 | ManualRule |
| V-58587 | ManualRule |
| V-58589 | ManualRule |
| V-58591 | ManualRule |
| V-58593 | ManualRule |
| V-58595 | ManualRule |
| V-58597 | ManualRule |
| V-58599 | ManualRule |
| V-58601 | ManualRule |
| V-58603 | ManualRule |
| V-58605 | ManualRule |
| V-58607 | ManualRule |
| V-58609 | ManualRule |
| V-58611 | ManualRule |
| V-58613 | ManualRule |
| V-58617 | ManualRule |
| V-58623 | ManualRule |
| V-58625 | ManualRule |
| V-58627 | ManualRule |
| V-58629 | ManualRule |
| V-58631 | ManualRule |
| V-58633 | ManualRule |
| V-58635 | ManualRule |
| V-58637 | ManualRule |
| V-58639 | ManualRule |
| V-58647 | ManualRule |
| V-58651 | ManualRule |
| V-58653 | ManualRule |
| V-58655 | ManualRule |
| V-58657 | ManualRule |
| V-58659 | ManualRule |
| V-58661 | ManualRule |
| V-58663 | ManualRule |
| V-58665 | ManualRule |
| V-58667 | ManualRule |
| V-58669 | ManualRule |
| V-58671 | ManualRule |
| V-58673 | ManualRule |
| V-58675 | ManualRule |
| V-58677 | ManualRule |
| V-58679 | ManualRule |
| V-58681 | ManualRule |
| V-58683 | ManualRule |
| V-58685 | ManualRule |
| V-58687 | ManualRule |
| V-58689 | ManualRule |
| V-58691 | ManualRule |
| V-58693 | ManualRule |
| V-58699 | ManualRule |
| V-58701 | ManualRule |
| V-58703 | ManualRule |
| V-58705 | ManualRule |
| V-58707 | ManualRule |
| V-58713 | ManualRule |
| V-58737 | ManualRule |
| V-58739 | ManualRule |
