#region Header
using module ..\helper.psm1
using module ..\..\PowerStig.psm1
#endregion Header

#region Composite
<#
    .SYNOPSIS
        A composite DSC resource to manage the IIS Server STIG settings
    .PARAMETER IisVersion
        The version of the IIS Stig to apply
    .PARAMETER LogPath
        The path to store log information
    .PARAMETER StigVersion
        The version of the IIS Server STIG to apply and/or monitor
    .PARAMETER Exception
        A hashtable of StigId=Value key pairs that are injected into the STIG data and applied to
        the target node. The title of STIG settings are tagged with the text ‘Exception’ to identify
        the exceptions to policy across the data center when you centralize DSC log collection.
    .PARAMETER OrgSettings
        The path to the xml file that contains the local organizations preferred settings for STIG
        items that have allowable ranges.
    .PARAMETER SkipRule
        The SkipRule Node is injected into the STIG data and applied to the taget node. The title
        of STIG settings are tagged with the text 'Skip' to identify the skips to policy across the
        data center when you centralize DSC log collection.
    .PARAMETER SkipRuleType
        All STIG rule IDs of the specified type are collected in an array and passed to the Skip-Rule
        function. Each rule follows the same process as the SkipRule parameter.
#>
Configuration IisServer
{
    [CmdletBinding()]
    Param
    (
        [Parameter(Mandatory = $true)]
        [ValidateNotNullOrEmpty()]
        [version]
        $IisVersion,

        [Parameter(Mandatory = $true)]
        [string]
        $LogPath,

        [Parameter()]
        [ValidateNotNullOrEmpty()]
        [version]
        $StigVersion,

        [Parameter()]
        [ValidateNotNullOrEmpty()]
        [hashtable]
        $Exception,

        [Parameter()]
        [ValidateNotNullOrEmpty()]
        [string]
        $OrgSettings,

        [Parameter()]
        [ValidateNotNullOrEmpty()]
        [string[]]
        $SkipRule,

        [Parameter()]
        [ValidateNotNullOrEmpty()]
        [string[]]
        $SkipRuleType
    )

    ##### BEGIN DO NOT MODIFY #####
    $stig = [STIG]::New('IISServer', $IisVersion, $StigVersion)
    $stig.LoadRules($OrgSettings, $Exception, $SkipRule, $SkipRuleType)

    # $resourcePath is exported from the helper module in the header
    # Process Skipped rules
    Import-DscResource -ModuleName PSDesiredStateConfiguration -ModuleVersion 1.1
    . "$resourcePath\windows.Script.skip.ps1"
    ##### END DO NOT MODIFY #####

    Import-DscResource -ModuleName AccessControlDsc -ModuleVersion 1.2.0.0
    . "$resourcePath\windows.AccessControl.ps1"

    Import-DscResource -ModuleName PSDesiredStateConfiguration -ModuleVersion 1.1
    . "$resourcePath\windows.WindowsFeature.ps1"

    Import-DscResource -ModuleName xPSDesiredStateConfiguration -ModuleVersion 8.3.0.0
    . "$resourcePath\windows.xRegistry.ps1"

    Import-DscResource -ModuleName xWebAdministration -ModuleVersion 2.3.0.0
    . "$resourcePath\windows.xIisMimeTypeMapping.ps1"
    . "$resourcePath\windows.WebConfigProperty.ps1"
    . "$resourcePath\windows.xIisLogging.ps1"
}
#endregion Composite
