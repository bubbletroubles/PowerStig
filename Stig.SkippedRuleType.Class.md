# SkippedRuleType Class

The SkippedRuleType class describes a SkippedRuleType, the collection of Stig rule ids of a specific Stig rule type that should be excluded from the Stigs that need to be processed. The SkippedRuleType class instance will move all of the Stig rules under that type into a SkippedRule section of the StigData output Xml so that it is documented as having been skipped.

## Constructors

| Name | Description |
|-|-|
| SkippedRuleType() | DO NOT USE - For testing only |
| SkippedRuleType(RuleType) | A constructor for SkippedRuleType. Returns a ready to use instance of SkippedRuleType. |

## Properties

| Name | Description |
|-|-|
| [StigRuleType](.\..\common\RuleType.md) | The name of the type of Stig rule. |

## Methods

| Name | Description |
|-|-|
| ConvertFrom *[s]* | Converts a provided string array of Stig rule types into a SkippedRuleType array. |

## Example

```PowerShell
$skippedRuleType = [SkippedRuleType]::new('AccountPolicyRule')
```
