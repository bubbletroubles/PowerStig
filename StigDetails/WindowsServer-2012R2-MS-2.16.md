# [Windows 2012 MS STIG, Version 2.16](https://github.com/Microsoft/PowerStig/wiki/WindowsServer-2012R2-MS-2.16)

**Title:** Windows Server 2012/2012 R2 Member Server Security Technical Implementation Guide  
**Version:** 2  
**Release:** Release: 16 Benchmark Date: 26 Jul 2019  
**FileName:** U_MS_Windows_2012_and_2012_R2_MS_STIG_V2R16_Manual-xccdf.xml  
**Created:** 9/6/2019  
**Description:** The Windows Server 2012/2012 R2 Member Server Security Technical Implementation Guide (STIG) is published as a tool to improve the security of Department of Defense (DoD) information systems. Comments or proposed revisions to this document should be sent via e-mail to the following address: disa.stig_spt@mail.mil.  
**StigRuleCoverage:** **302** of **348** rules are automated; **87%**  

## Automated Rules

| StigRuleId | Severity | RuleType | DscResource | DuplicateOf | Title |
| :---- | :---- | :---- | :---- | :---- | :---- |
| V-1097 | Medium | AccountPolicyRule | AccountPolicy |  | Bad Logon Attempts |
| V-1098 | Medium | AccountPolicyRule | AccountPolicy |  | Bad Logon Counter Reset |
| V-1099 | Medium | AccountPolicyRule | AccountPolicy |  | Lockout Duration |
| V-1104 | Medium | AccountPolicyRule | AccountPolicy |  | Maximum Password Age  |
| V-1105 | Medium | AccountPolicyRule | AccountPolicy |  | Minimum Password Age |
| V-1107 | Medium | AccountPolicyRule | AccountPolicy |  | Password Uniqueness |
| V-1150 | Medium | AccountPolicyRule | AccountPolicy |  | Microsoft Strong Password Filtering |
| V-2372 | High | AccountPolicyRule | AccountPolicy |  | Reversible Password Encryption |
| V-6836 | Medium | AccountPolicyRule | AccountPolicy |  | Minimum Password Length |
| V-26529 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | Audit - Credential Validation - Success |
| V-26530 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | Audit - Credential Validation  - Failure |
| V-26533 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | Audit - Other Account Management Events - Success |
| V-26535 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | Audit - Security Group Management - Success |
| V-26537 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | Audit - User Account Management - Success |
| V-26538 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | Audit - User Account Management - Failure |
| V-26539 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | Audit - Process Creation - Success |
| V-26540 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | Audit - Logoff - Success |
| V-26541 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | Audit - Logon - Success |
| V-26542 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | Audit - Logon - Failure |
| V-26543 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | Audit - Special Logon - Success |
| V-26546 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | Audit - Audit Policy Change - Success |
| V-26547 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | Audit - Audit Policy Change - Failure |
| V-26548 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | Audit - Authentication Policy Change - Success |
| V-26549 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | Audit - Sensitive Privilege Use - Success |
| V-26550 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | Audit - Sensitive Privilege Use - Failure |
| V-26551 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | Audit - IPSec Driver - Success |
| V-26552 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | Audit - IPSec Driver - Failure |
| V-26553 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | Audit - Security State Change - Success |
| V-26555 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | Audit - Security System Extension - Success |
| V-26557 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | Audit - System Integrity - Success |
| V-26558 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | Audit - System Integrity - Failure |
| V-36667 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | WINAU-000016 |
| V-36668 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | WINAU-000017 |
| V-40200 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | WNAU-000060 |
| V-40202 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | WNAU-000059 |
| V-57633 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | WINAU-000089 |
| V-78057 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | WINAU-000501 |
| V-78059 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | WINAU-000502 |
| V-78061 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | WINAU-000907 |
| V-78063 | Medium | AuditPolicyRule | AuditPolicySubcategory |  | WINAU-000908 |
| V-1073 | High | AuditSettingRule | AuditSetting |  | Unsupported Service Packs |
| V-1081 | High | AuditSettingRule | AuditSetting |  | NTFS Requirement |
| V-6840 | Medium | AuditSettingRule | AuditSetting |  | Password Expiration |
| V-7002 | High | AuditSettingRule | AuditSetting |  | Password Requirement |
| V-80473 | Medium | AuditSettingRule | AuditSetting |  | WIN00-000200 |
| V-1152 | High | PermissionRule | RegistryAccessEntry |  | Anonymous Access to the Registry |
| V-26070 | High | PermissionRule | RegistryAccessEntry |  | Winlogon Registry Permissions |
| V-32282 | High | PermissionRule | RegistryAccessEntry |  | WINRG-000001 Active Setup\Installed Components Registry Permissions |
| V-36722 | Medium | PermissionRule | NTFSAccessEntry |  | WINAU-000204 |
| V-36723 | Medium | PermissionRule | NTFSAccessEntry |  | WINAU-000205 |
| V-36724 | Medium | PermissionRule | NTFSAccessEntry |  | WINAU-000206 |
| V-40177.a | Medium | PermissionRule | NTFSAccessEntry |  | WNGE-000007 |
| V-40177.b | Medium | PermissionRule | NTFSAccessEntry |  | WNGE-000007 |
| V-40178 | Medium | PermissionRule | NTFSAccessEntry |  | WNGE-000006 |
| V-40179 | Medium | PermissionRule | NTFSAccessEntry |  | WNGE-000008 |
| V-57721 | Medium | PermissionRule | NTFSAccessEntry |  | WINAU-000213 |
| V-1075 | Low | RegistryRule | Registry |  | Display Shutdown Button |
| V-1089 | Medium | RegistryRule | Registry |  | Legal Notice Display |
| V-1090 | Low | RegistryRule | Registry |  | Caching of logon credentials |
| V-1093 | High | RegistryRule | Registry |  | Anonymous shares are not restricted |
| V-1136 | Low | RegistryRule | Registry |  | Forcibly Disconnect when Logon Hours Expire |
| V-1141 | Medium | RegistryRule | Registry |  | Unencrypted Password is Sent to SMB Server. |
| V-1145 | Medium | RegistryRule | Registry |  | Disable Automatic Logon |
| V-1151 | Low | RegistryRule | Registry |  | Secure Print Driver Installation |
| V-1153 | High | RegistryRule | Registry |  | LanMan Authentication Level |
| V-1154 | Medium | RegistryRule | Registry |  | Ctrl+Alt+Del Security Attention Sequence |
| V-1157 | Medium | RegistryRule | Registry |  | Smart Card Removal Option  |
| V-1162 | Medium | RegistryRule | Registry |  | SMB Server Packet Signing (if client agrees) |
| V-1163 | Medium | RegistryRule | Registry |  | Encryption of Secure Channel Traffic |
| V-1164 | Medium | RegistryRule | Registry |  | Signing of Secure Channel Traffic |
| V-1165 | Low | RegistryRule | Registry |  | Computer Account Password Reset |
| V-1166 | Medium | RegistryRule | Registry |  | SMB Client Packet Signing (if server agrees) |
| V-1171 | Medium | RegistryRule | Registry |  | Format and Eject Removable Media |
| V-1172 | Low | RegistryRule | Registry |  | Password Expiration Warning |
| V-1173 | Low | RegistryRule | Registry |  | Global System Objects Permission Strength |
| V-1174 | Low | RegistryRule | Registry |  | Idle Time Before Suspending a Session. |
| V-2374 | High | RegistryRule | RegistryPolicyFile |  | Disable Media Autoplay |
| V-3338 | High | RegistryRule | Registry |  | Anonymous Access to Named Pipes |
| V-3339 | High | RegistryRule | Registry |  | Remotely Accessible Registry Paths |
| V-3340 | High | RegistryRule | Registry |  | Anonymous Access to Network Shares |
| V-3343 | High | RegistryRule | RegistryPolicyFile |  | Remote Assistance - Solicit Remote Assistance |
| V-3344 | High | RegistryRule | Registry |  | Limit Blank Passwords |
| V-3373 | Low | RegistryRule | Registry |  | Maximum Machine Account Password Age |
| V-3374 | Medium | RegistryRule | Registry |  | Strong Session Key |
| V-3377 | Medium | RegistryRule | Registry |  | Everyone Anonymous rights |
| V-3378 | Medium | RegistryRule | Registry |  | Sharing and Security Model for Local Accounts |
| V-3379 | High | RegistryRule | Registry |  | LAN Manager Hash stored |
| V-3381 | Medium | RegistryRule | Registry |  | LDAP Client Signing |
| V-3382 | Medium | RegistryRule | Registry |  | Session Security for NTLM SSP Based Clients |
| V-3383 | Medium | RegistryRule | Registry |  | FIPS Compliant Algorithms  |
| V-3385 | Medium | RegistryRule | Registry |  | Case Insensitivity for Non-Windows |
| V-3449 | Medium | RegistryRule | RegistryPolicyFile |  | TS/RDS -  Session Limit |
| V-3453 | Medium | RegistryRule | RegistryPolicyFile |  | TS/RDS - Password Prompting |
| V-3454 | Medium | RegistryRule | RegistryPolicyFile |  | TS/RDS - Set Encryption Level |
| V-3455 | Medium | RegistryRule | RegistryPolicyFile |  | TS/RDS - Do Not Use Temp Folders |
| V-3456 | Medium | RegistryRule | RegistryPolicyFile |  | TS/RDS - Delete Temp Folders |
| V-3469 | Medium | RegistryRule | RegistryPolicyFile |  | Group Policy - Do Not Turn off Background Refresh |
| V-3470 | Medium | RegistryRule | RegistryPolicyFile |  | Remote Assistance - Offer Remote Assistance |
| V-3479 | Medium | RegistryRule | Registry |  | Safe DLL Search Mode |
| V-3480 | Medium | RegistryRule | RegistryPolicyFile |  | Media Player - Disable Automatic Updates |
| V-3481 | Medium | RegistryRule | RegistryPolicyFile |  | Media Player - Prevent Codec Download |
| V-3666 | Medium | RegistryRule | Registry |  | Session Security for NTLM SSP based Servers |
| V-4108 | Low | RegistryRule | Registry |  | Audit Log Warning Level |
| V-4110 | Low | RegistryRule | Registry |  | Disable IP Source Routing |
| V-4111 | Low | RegistryRule | Registry |  | Disable ICMP Redirect |
| V-4112 | Low | RegistryRule | Registry |  | Disable Router Discovery |
| V-4113 | Low | RegistryRule | Registry |  | TCP Connection Keep-Alive Time |
| V-4116 | Low | RegistryRule | Registry |  | Name-Release Attacks |
| V-4438 | Low | RegistryRule | Registry |  | TCP Data Retransmissions |
| V-4442 | Low | RegistryRule | Registry |  | Screen Saver Grace Period |
| V-4443 | High | RegistryRule | Registry |  | Remotely Accessible Registry Paths and Sub-Paths |
| V-4445 | Low | RegistryRule | Registry |  | Optional Subsystems |
| V-4447 | Medium | RegistryRule | RegistryPolicyFile |  | TS/RDS -  Secure RPC Connection. |
| V-4448 | Medium | RegistryRule | RegistryPolicyFile |  | Group Policy - Registry Policy Processing |
| V-6831 | Medium | RegistryRule | Registry |  | Encrypting and Signing of Secure Channel Traffic |
| V-6832 | Medium | RegistryRule | Registry |  | SMB Client Packet Signing (Always) |
| V-6833 | Medium | RegistryRule | Registry |  | SMB Server Packet Signing (Always) |
| V-6834 | High | RegistryRule | Registry |  | Anonymous Access to Named Pipes and Shares |
| V-11806 | Low | RegistryRule | Registry |  | Display of Last User Name |
| V-14228 | Medium | RegistryRule | Registry |  | Audit Access of Global System Objects |
| V-14229 | Medium | RegistryRule | Registry |  | Audit Backup and Restore Privileges |
| V-14230 | Medium | RegistryRule | Registry |  | Audit Policy Subcategory Setting |
| V-14232 | Low | RegistryRule | Registry |  | IPSec Exemptions |
| V-14234 | Medium | RegistryRule | Registry |  | UAC - Admin Approval Mode |
| V-14235 | Medium | RegistryRule | Registry |  | UAC - Admin Elevation Prompt |
| V-14236 | Medium | RegistryRule | Registry |  | UAC - User Elevation Prompt |
| V-14237 | Medium | RegistryRule | Registry |  | UAC - Application Installations |
| V-14239 | Medium | RegistryRule | Registry |  | UAC - UIAccess Application Elevation |
| V-14240 | Medium | RegistryRule | Registry |  | UAC - All Admin Approval Mode |
| V-14241 | Medium | RegistryRule | Registry |  | UAC - Secure Desktop Mode |
| V-14242 | Medium | RegistryRule | Registry |  | UAC - Non UAC Compliant Application Virtualization |
| V-14243 | Medium | RegistryRule | RegistryPolicyFile |  | Enumerate Administrator Accounts on Elevation |
| V-14247 | Medium | RegistryRule | RegistryPolicyFile |  | TS/RDS - Prevent Password Saving |
| V-14249 | Medium | RegistryRule | RegistryPolicyFile |  | TS/RDS - Drive Redirection |
| V-14253 | Medium | RegistryRule | RegistryPolicyFile |  | RPC - Unauthenticated RPC Clients |
| V-14259 | Medium | RegistryRule | RegistryPolicyFile |  | Printing Over HTTP |
| V-14260 | Medium | RegistryRule | RegistryPolicyFile |  | HTTP Printer Drivers |
| V-14261 | Medium | RegistryRule | RegistryPolicyFile |  | Windows Update Device Drive Searching |
| V-14268 | Medium | RegistryRule | RegistryPolicyFile |  | Attachment Mgr - Preserve Zone Info |
| V-14269 | Medium | RegistryRule | RegistryPolicyFile |  | Attachment Mgr - Hide Mech to Remove Zone Info |
| V-14270 | Medium | RegistryRule | RegistryPolicyFile |  | Attachment Mgr - Scan with Antivirus |
| V-15666 | Medium | RegistryRule | RegistryPolicyFile |  | Windows Peer to Peer Networking  |
| V-15667 | Medium | RegistryRule | RegistryPolicyFile |  | Prohibit Network Bridge |
| V-15672 | Low | RegistryRule | RegistryPolicyFile |  | Event Viewer Events.asp Links |
| V-15674 | Medium | RegistryRule | RegistryPolicyFile |  | Internet File Association Service  |
| V-15682 | Medium | RegistryRule | RegistryPolicyFile |  | RSS Attachment Downloads |
| V-15683 | Medium | RegistryRule | RegistryPolicyFile |  | Windows Explorer – Shell Protocol Protected Mode  |
| V-15684 | Medium | RegistryRule | RegistryPolicyFile |  | Windows Installer – IE Security Prompt |
| V-15685 | Medium | RegistryRule | RegistryPolicyFile |  | Windows Installer – User Control  |
| V-15686 | Low | RegistryRule | RegistryPolicyFile |  | Windows Installer – Vendor Signed Updates |
| V-15687 | Low | RegistryRule | RegistryPolicyFile |  | Media Player – First Use Dialog Boxes  |
| V-15696.a | Medium | RegistryRule | RegistryPolicyFile |  | Network – Mapper I/O Driver  |
| V-15696.b | Medium | RegistryRule | RegistryPolicyFile |  | Network – Mapper I/O Driver  |
| V-15696.c | Medium | RegistryRule | RegistryPolicyFile |  | Network – Mapper I/O Driver  |
| V-15696.d | Medium | RegistryRule | RegistryPolicyFile |  | Network – Mapper I/O Driver  |
| V-15697.a | Medium | RegistryRule | RegistryPolicyFile |  | Network – Responder Driver  |
| V-15697.b | Medium | RegistryRule | RegistryPolicyFile |  | Network – Responder Driver  |
| V-15697.c | Medium | RegistryRule | RegistryPolicyFile |  | Network – Responder Driver  |
| V-15697.d | Medium | RegistryRule | RegistryPolicyFile |  | Network – Responder Driver  |
| V-15698.a | Medium | RegistryRule | RegistryPolicyFile |  | Network – WCN Wireless Configuration  |
| V-15698.b | Medium | RegistryRule | RegistryPolicyFile |  | Network – WCN Wireless Configuration  |
| V-15698.c | Medium | RegistryRule | RegistryPolicyFile |  | Network – WCN Wireless Configuration  |
| V-15698.d | Medium | RegistryRule | RegistryPolicyFile |  | Network – WCN Wireless Configuration  |
| V-15698.e | Medium | RegistryRule | RegistryPolicyFile |  | Network – WCN Wireless Configuration  |
| V-15699 | Medium | RegistryRule | RegistryPolicyFile |  | Network – Windows Connect Now Wizards  |
| V-15700 | Medium | RegistryRule | RegistryPolicyFile |  | Device Install – PnP Interface Remote Access  |
| V-15701 | Low | RegistryRule | RegistryPolicyFile |  | Device Install – Drivers System Restore Point |
| V-15702 | Low | RegistryRule | RegistryPolicyFile |  | Device Install – Generic Driver Error Report |
| V-15703 | Low | RegistryRule | RegistryPolicyFile |  | Driver Install – Device Driver Search Prompt |
| V-15704 | Low | RegistryRule | RegistryPolicyFile |  | Handwriting Recognition Error Reporting |
| V-15705 | Medium | RegistryRule | RegistryPolicyFile |  | Power Mgmt – Password Wake on Battery |
| V-15706 | Medium | RegistryRule | RegistryPolicyFile |  | Power Mgmt – Password Wake When Plugged In |
| V-15707 | Low | RegistryRule | RegistryPolicyFile |  | Remote Assistance – Session Logging |
| V-15718 | Low | RegistryRule | RegistryPolicyFile |  | Windows Explorer – Heap Termination |
| V-15722 | Medium | RegistryRule | RegistryPolicyFile |  | Media DRM – Internet Access |
| V-15727 | Medium | RegistryRule | RegistryPolicyFile |  | User Network Sharing |
| V-15991 | Medium | RegistryRule | Registry |  | UAC - UIAccess Secure Desktop |
| V-15997 | Medium | RegistryRule | RegistryPolicyFile |  | TS/RDS – COM Port Redirection |
| V-15998 | Medium | RegistryRule | RegistryPolicyFile |  | TS/RDS – LPT Port Redirection |
| V-15999 | Medium | RegistryRule | RegistryPolicyFile |  | TS/RDS - PNP Device Redirection |
| V-16000 | Medium | RegistryRule | RegistryPolicyFile |  | TS/RDS – Smart Card Device Redirection |
| V-16008 | Medium | RegistryRule | Registry |  | UAC - Application Elevations |
| V-16020 | Medium | RegistryRule | RegistryPolicyFile |  | Windows Customer Experience Improvement Program  |
| V-16021 | Medium | RegistryRule | RegistryPolicyFile |  | Help Experience Improvement Program  |
| V-16048 | Medium | RegistryRule | RegistryPolicyFile |  | Help Ratings |
| V-21950 | Medium | RegistryRule | Registry |  | SPN Target Name Validation Level |
| V-21951 | Medium | RegistryRule | Registry |  | Computer Identity Authentication for NTLM |
| V-21952 | Medium | RegistryRule | Registry |  | NTLM NULL Session Fallback |
| V-21953 | Medium | RegistryRule | Registry |  | PKU2U Online Identities Authentication |
| V-21954 | Medium | RegistryRule | Registry |  | Kerberos Encryption Types |
| V-21955 | Low | RegistryRule | Registry |  | IPv6 Source Routing |
| V-21956 | Low | RegistryRule | Registry |  | IPv6 TCP Data Retransmissions |
| V-21960 | Low | RegistryRule | RegistryPolicyFile |  | Elevate when setting a network’s location |
| V-21961 | Low | RegistryRule | RegistryPolicyFile |  | Direct Access – Route Through Internal Network |
| V-21963 | Low | RegistryRule | RegistryPolicyFile |  | Windows Update Point and Print Driver Search |
| V-21964 | Low | RegistryRule | RegistryPolicyFile |  | Prevent device metadata retrieval from Internet |
| V-21965 | Low | RegistryRule | RegistryPolicyFile |  | Prevent Windows Update for device driver search |
| V-21967 | Low | RegistryRule | RegistryPolicyFile |  | MSDT Interactive Communication |
| V-21969 | Low | RegistryRule | RegistryPolicyFile |  | Windows Online Troubleshooting Service |
| V-21970 | Low | RegistryRule | RegistryPolicyFile |  | Disable PerfTrack |
| V-21971 | Low | RegistryRule | RegistryPolicyFile |  | Application Compatibility Program Inventory |
| V-21973 | High | RegistryRule | RegistryPolicyFile |  | Autoplay for non-volume devices |
| V-21980 | Medium | RegistryRule | RegistryPolicyFile |  | Explorer Data Execution Prevention |
| V-22692 | High | RegistryRule | RegistryPolicyFile |  | Default Autorun Behavior |
| V-26283 | High | RegistryRule | Registry |  | Restrict Anonymous SAM Enumeration |
| V-26359 | Low | RegistryRule | Registry |  | Legal Banner Dialog Box Title |
| V-26575 | Medium | RegistryRule | RegistryPolicyFile |  | 6to4 State |
| V-26576 | Medium | RegistryRule | RegistryPolicyFile |  | IP-HTTPS State |
| V-26577 | Medium | RegistryRule | RegistryPolicyFile |  | ISATAP State |
| V-26578 | Medium | RegistryRule | RegistryPolicyFile |  | Teredo State |
| V-26579 | Medium | RegistryRule | RegistryPolicyFile |  | Maximum Log Size - Application |
| V-26580 | Medium | RegistryRule | RegistryPolicyFile |  | Maximum Log Size - Security |
| V-26581 | Medium | RegistryRule | RegistryPolicyFile |  | Maximum Log Size - Setup |
| V-26582 | Medium | RegistryRule | RegistryPolicyFile |  | Maximum Log Size - System |
| V-28504 | Low | RegistryRule | RegistryPolicyFile |  | Device Install Software Request Error Report |
| V-34974 | High | RegistryRule | RegistryPolicyFile |  | Always Install with Elevated Privileges Disabled |
| V-36439 | Medium | RegistryRule | RegistryPolicyFile |  | Local admin accounts filtered token policy enabled on domain systems. |
| V-36656 | Medium | RegistryRule | RegistryPolicyFile |  | WINUC-000001 |
| V-36657 | Medium | RegistryRule | RegistryPolicyFile |  | WINUC-000003 |
| V-36673 | Low | RegistryRule | RegistryPolicyFile |  | WINCC-000011 |
| V-36677 | Low | RegistryRule | RegistryPolicyFile |  | WINCC-000018 |
| V-36678 | Low | RegistryRule | RegistryPolicyFile |  | WINCC-000025 |
| V-36679 | Medium | RegistryRule | RegistryPolicyFile |  | WINCC-000027 |
| V-36680 | Medium | RegistryRule | RegistryPolicyFile |  | WINCC-000030 |
| V-36681 | Medium | RegistryRule | RegistryPolicyFile |  | WINCC-000048 |
| V-36684 | Medium | RegistryRule | RegistryPolicyFile |  | WINCC-000051 |
| V-36687 | Medium | RegistryRule | RegistryPolicyFile |  | WINCC-000052 |
| V-36696 | Low | RegistryRule | RegistryPolicyFile |  | WINCC-000065 |
| V-36697 | Low | RegistryRule | RegistryPolicyFile |  | WINCC-000070 |
| V-36698 | Medium | RegistryRule | RegistryPolicyFile |  | WINCC-000075 |
| V-36700 | Medium | RegistryRule | RegistryPolicyFile |  | WINCC-000076 |
| V-36707 | Medium | RegistryRule | RegistryPolicyFile |  | WINCC-000088 |
| V-36708 | Medium | RegistryRule | RegistryPolicyFile |  | WINCC-000095 |
| V-36709 | Medium | RegistryRule | RegistryPolicyFile |  | WINCC-000106 |
| V-36710.a | Low | RegistryRule | RegistryPolicyFile |  | WINCC-000109 |
| V-36710.b | Low | RegistryRule | RegistryPolicyFile |  | WINCC-000109 |
| V-36711 | Medium | RegistryRule | RegistryPolicyFile |  | WINCC-000110 |
| V-36712 | High | RegistryRule | RegistryPolicyFile |  | WINCC-000123 |
| V-36713 | Medium | RegistryRule | RegistryPolicyFile |  | WINCC-000124 |
| V-36714 | Medium | RegistryRule | RegistryPolicyFile |  | WINCC-000125 |
| V-36718 | High | RegistryRule | RegistryPolicyFile |  | WINCC-000126 |
| V-36719 | Medium | RegistryRule | RegistryPolicyFile |  | WINCC-000127 |
| V-36720 | Medium | RegistryRule | RegistryPolicyFile |  | WINCC-000128 |
| V-36773 | Medium | RegistryRule | Registry |  | WINSO-000021 |
| V-36776 | Low | RegistryRule | RegistryPolicyFile |  | WINUC-000005 |
| V-36777 | Low | RegistryRule | RegistryPolicyFile |  | WINUC-000006 |
| V-40204 | Medium | RegistryRule | RegistryPolicyFile |  | WNCC-000136 |
| V-43238 | Medium | RegistryRule | RegistryPolicyFile |  | WINCC-000138 |
| V-43239 | Medium | RegistryRule | RegistryPolicyFile |  | WINCC-000139 |
| V-43240 | Medium | RegistryRule | RegistryPolicyFile |  | WINCC-000140 |
| V-43241 | Low | RegistryRule | RegistryPolicyFile |  | WINCC-000141 |
| V-43245 | Medium | RegistryRule | RegistryPolicyFile |  | WINCC-000145 |
| V-57639 | Medium | RegistryRule | Registry |  | WINSO-000092 |
| V-72753 | Medium | RegistryRule | RegistryPolicyFile |  | WINCC-000150 |
| V-73519 | Medium | RegistryRule | RegistryPolicyFile |  | WIN00-000170 |
| V-80475 | Medium | RegistryRule | RegistryPolicyFile |  | WIN00-000210 |
| V-1113 | Medium | SecurityOptionRule | SecurityOption |  | Disable Guest Account |
| V-1114 | Medium | SecurityOptionRule | SecurityOption |  | Rename Built-in Guest Account |
| V-1115 | Medium | SecurityOptionRule | SecurityOption |  | Rename Built-in Administrator Account |
| V-3337 | High | SecurityOptionRule | SecurityOption |  | Anonymous SID/Name Translation |
| V-3380 | Medium | SecurityOptionRule | SecurityOption |  | Force Logoff When Logon Hours Expire |
| V-15505 | Medium | ServiceRule | Service |  | HBSS McAfee Agent |
| V-26600 | Medium | ServiceRule | Service |  | Fax Service Disabled  |
| V-26602 | Medium | ServiceRule | Service |  | Microsoft FTP Service Disabled |
| V-26604 | Medium | ServiceRule | Service |  | Peer Networking Identity Manager Service Disabled |
| V-26605 | Medium | ServiceRule | Service |  | Simple TCP/IP Services Disabled |
| V-26606 | Medium | ServiceRule | Service |  | Telnet Service Disabled |
| V-36736 | Medium | ServiceRule | Service |  | WINGE-000030 |
| V-40206 | Medium | ServiceRule | Service |  | WNSV-000106 |
| V-42420 | Medium | ServiceRule | Service |  | WINFW-000001 |
| V-1102 | High | UserRightRule | UserRightsAssignment |  | User Right - Act as part of OS |
| V-1155 | Medium | UserRightRule | UserRightsAssignment |  | Deny Access from the Network |
| V-18010 | High | UserRightRule | UserRightsAssignment |  | User Right - Debug Programs |
| V-26469 | Medium | UserRightRule | UserRightsAssignment |  | Access Credential Manager as a trusted caller |
| V-26470 | Medium | UserRightRule | UserRightsAssignment |  | Access this computer from the network |
| V-26472 | Medium | UserRightRule | UserRightsAssignment |  | Allow log on locally |
| V-26473 | Medium | UserRightRule | UserRightsAssignment |  | Allow log on through Remote Desktop Services |
| V-26474 | Medium | UserRightRule | UserRightsAssignment |  | Back up files and directories |
| V-26478 | Medium | UserRightRule | UserRightsAssignment |  | Create a pagefile |
| V-26479 | High | UserRightRule | UserRightsAssignment |  | Create a token object |
| V-26480 | Medium | UserRightRule | UserRightsAssignment |  | Create global objects |
| V-26481 | Medium | UserRightRule | UserRightsAssignment |  | Create permanent shared objects |
| V-26482 | Medium | UserRightRule | UserRightsAssignment |  | Create symbolic links |
| V-26483 | Medium | UserRightRule | UserRightsAssignment |  | Deny log on as a batch job |
| V-26484 | Medium | UserRightRule | UserRightsAssignment |  | Deny log on as service  |
| V-26485 | Medium | UserRightRule | UserRightsAssignment |  | Deny log on locally |
| V-26486 | Medium | UserRightRule | UserRightsAssignment |  | Deny log on through Remote Desktop \ Terminal Services |
| V-26487 | Medium | UserRightRule | UserRightsAssignment |  | Enable accounts to be trusted for delegation |
| V-26488 | Medium | UserRightRule | UserRightsAssignment |  | Force shutdown from a remote system |
| V-26489 | Medium | UserRightRule | UserRightsAssignment |  | Generate security audits |
| V-26490 | Medium | UserRightRule | UserRightsAssignment |  | Impersonate a client after authentication |
| V-26492 | Medium | UserRightRule | UserRightsAssignment |  | Increase scheduling priority |
| V-26493 | Medium | UserRightRule | UserRightsAssignment |  | Load and unload device drivers |
| V-26494 | Medium | UserRightRule | UserRightsAssignment |  | Lock pages in memory |
| V-26496 | Medium | UserRightRule | UserRightsAssignment |  | Manage auditing and security log |
| V-26498 | Medium | UserRightRule | UserRightsAssignment |  | Modify firmware environment values |
| V-26499 | Medium | UserRightRule | UserRightsAssignment |  | Perform volume maintenance tasks |
| V-26500 | Medium | UserRightRule | UserRightsAssignment |  | Profile single process |
| V-26504 | Medium | UserRightRule | UserRightsAssignment |  | Restore files and directories |
| V-26506 | Medium | UserRightRule | UserRightsAssignment |  | Take ownership of files or other objects |
| V-73805 | Medium | WindowsFeatureRule | WindowsFeature |  | WIN00-000160 |
| V-80477 | Medium | WindowsFeatureRule | WindowsFeature |  | WIN00-000220 |

## Document / Manual Rules (Not Automated)

| StigRuleId | Severity | RuleType | Title |
| :---- | :---- | :---- | :---- |
| V-1072 | Medium | DocumentRule | Shared User Accounts |
| V-1112 | Low | DocumentRule | Dormant Accounts |
| V-1120 | Medium | DocumentRule | Prohibited FTP Logins |
| V-1121 | High | DocumentRule | FTP System File Access |
| V-1168 | Medium | DocumentRule | Members of the Backup Operators Group |
| V-3289 | Medium | DocumentRule | Intrusion Detection System |
| V-3487 | Medium | DocumentRule | Unnecessary Services |
| V-15823 | Medium | DocumentRule | Software Certificate Installation Files |
| V-32272 | Medium | DocumentRule | WINPK-000001 |
| V-36658 | Medium | DocumentRule | WIN00-000005-01 |
| V-36734 | Medium | DocumentRule | WINGE-000028 |
| V-40173 | Low | DocumentRule | WN00-000017 |
| V-73523.a | Medium | DocumentRule | WIN00-000180 |
| V-73523.b | Medium | DocumentRule | WIN00-000180 |
| V-1070 | Medium | ManualRule | Physical security |
| V-1074 | High | ManualRule | WIN00-000100 |
| V-1076 | Low | ManualRule | System Recovery Backups |
| V-1119 | Medium | ManualRule | Booting into Multiple Operating Systems |
| V-1127 | High | ManualRule | Restricted Administrator Group Membership |
| V-1128 | Low | ManualRule | Security Configuration Tools |
| V-1135 | Low | ManualRule | Printer Share Permissions |
| V-2907 | Medium | ManualRule | System File Changes |
| V-3245 | Medium | ManualRule | File share ACLs |
| V-3472 | Low | ManualRule | Windows Time Service - Configure NTP Client |
| V-14225 | Medium | ManualRule | Administrator Account Password Changes |
| V-32274 | Medium | ManualRule | WINPK-000003 |
| V-36451 | High | ManualRule | Accounts with administrative privileges Internet access |
| V-36659 | High | ManualRule | WIN00-000005-02 |
| V-36661 | Medium | ManualRule | WIN00-000010-01 |
| V-36662 | Medium | ManualRule | WIN00-000010-02 |
| V-36666 | Medium | ManualRule | WIN00-000014 |
| V-36670 | Medium | ManualRule | WINAU-000100 |
| V-36671 | Medium | ManualRule | WINAU-000101 |
| V-36672 | Medium | ManualRule | WINAU-000102 |
| V-36733 | Low | ManualRule | WINGE-000027 |
| V-36735 | Medium | ManualRule | WINGE-000029 |
| V-40172 | Low | ManualRule | WN00-000016 |
| V-40198 | Medium | ManualRule | WN00-000009-02 |
| V-40237 | Medium | ManualRule | WINPK-000004 |
| V-57637 | Medium | ManualRule | WIN00-000018 |
| V-57641 | Medium | ManualRule | WIN00-000019 |
| V-57645 | Medium | ManualRule | WIN00-000020 |
| V-57653 | Medium | ManualRule | WINGE-000056 |
| V-57655 | Medium | ManualRule | WINGE-000057 |
| V-57719 | Medium | ManualRule | WINAU-000203 |
| V-75915 | Medium | ManualRule | WIN00-000190 |
