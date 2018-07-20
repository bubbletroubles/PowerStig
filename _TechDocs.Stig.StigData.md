# StigData Class

The StigData class describes a StigData, the collection of all Stig rules for a given technology that need to be implemented in order to enforce the security posture those rules define. StigData takes in instances of many other classes that describe the given technology and the implementing organizations specific settings, exceptions, and rules to skip. Upon creation of a StigData instance, the resulting Xml is immediately available for those preconditions.

## Constructors

|||
|-|-|
| StigData() | DO NOT USE - For testing only |
| StigData($StigVersion, $OrganizationalSettings, $Technology, $TechnologyRole, $TechnologyVersion, $StigExceptions, $SkippedRuleTypes, $SkippedRules) | A constructor for StigData. Returns a ready to use instance of StigData. |

## Properties

|||
|-|-|
| [StigVersion](https://docs.microsoft.com/en-us/dotnet/api/?view=netframework-4.7.1&term=system.version) | The document/published version of the Stig to select |
| [OrganizationalSettings](OrganizationalSettings.md) | An array of settings/values specific to an organization to apply to specific rules. |
| [Technology](Technology.md) | The type of the technology of the Stig to select. |
| [TechnologyRole](TechnologyRole.md) | The role of the technology of the Stig to select. |
| [TechnologyVersion](TechnologyVersion.md) | The version of the technology of the Stig to select. |
| [StigException[]](StigException.md) | An array of names of Stig exceptions to apply to specific rules. |
| [SkippedRuleType[]](SkippedRuleType.md) | An array of names of rule types to skip all rules of. |
| [SkippedRule[]](SkippedRule.md) | An array of Stig rules to skip and move into the SkipRule rule type. |
| [StigXml](https://docs.microsoft.com/en-us/dotnet/api/system.xml.xmldocument?view=netframework-4.7.1) | The loaded Xml document of the Stig loaded from StigPath. |
| [StigPath](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.7.1) | The file path to the Stig Xml file in the StigData directory. |

## Methods

|||
|-|-|
| SetStigPath()                 | Determines and sets the StigPath. |
| ProcessStigData()             | Processes properties into Stig Xml. |
| MergeOrganizationalSettings() | Merges OrganizationalSetting property into StigXml. |
| MergeStigExceptions()         | Merges StigExceptions property into StigXml. |
| ProcessSkippedRuleTypes()     | Processes SkippedRuleTypes property into SkippedRules. |
| MergeSkippedRules()           | Merges SkippedRules property into StigXml. |
| GetRootPath() *[s]*           | Returns the root path to the StigData directory. |
| GetHighestStigVersion(Technology, TechnologyRole, TechnologyVersion) *[s]* | Returns the highest available Stig version. |
| GetAvailableStigs() *[s]*     | Returns all available Stigs. |

## Examples

### Example 1

In this example, the full STIG (V2R12) is returned for the Windows Server 2012R2 Domain Controller with the default organizational settings applied.

More information on [Organizational Settings](OrganizationalSettings.md)

```PowerShell

$OsVersion               = '2012R2'
$OsRole                  = 'DC'
$StigVersion             = '2.12'
$OrganizationalSettings  = $null
$StigExceptions          = $null
$SkippedRuleTypes        = $null
$SkippedRules            = $null

$technology        = [Technology]::Windows
$technologyVersion = [TechnologyVersion]::New( $OsVersion, $technology )
$technologyRole    = [TechnologyRole]::New( $OsRole, $technologyVersion )

$stigData = [StigData]::new($StigVersion, $OrganizationalSettings, $Technology, $TechnologyRole, $TechnologyVersion, $StigExceptions, $SkippedRuleTypes, $SkippedRules)
```

### Example 2

In this example, the full STIG (V2R12) is returned for the Windows Server 2012R2 Domain Controller with the default organizational settings applied. The StigId 'V-1090' is overridden with an exception.

More information on [Organizational Settings](OrganizationalSettings.md)

```PowerShell
# TO DO
```
