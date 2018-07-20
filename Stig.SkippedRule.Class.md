# SkippedRule Class

The SkippedRule class describes a SkippedRule, the rule id of a specific Stig rule that should be excluded from the Stigs that need to be processed. The SkippedRule class instance will move the specific Stig rule into a SkippedRule section of the StigData output Xml so that it is documented as having been skipped.

## Constructors

| Name | Description |
|-|-|
| SkippedRule() | DO NOT USE - For testing only |
| SkippedRule(StigRuleId) | A constructor for SkippedRule. Returns a ready to use instance of SkippedRule. |

## Properties

| Name | Description |
|-|-|
| [StigRuleId](https://docs.microsoft.com/en-us/dotnet/api/system.string?view=netframework-4.7.1) | The Id of an individual Stig Rule to skip. |

## Methods

| Name | Description |
|-|-|
| None | |

## Example

```PowerShell
$skippedRule = [SkippedRule]::new('V-1090')
```
