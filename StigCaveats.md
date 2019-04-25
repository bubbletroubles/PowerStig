# STIG Caveats

A list of caveats (gotchas) for STIG rules that may break and or have unique requiements.

## SqlServer 2012

Rule V-41294 will not reach a desired state unless a credential is provided via PsDscRunAsCredential.
Documentation on how to secure the mof is found [here](https://docs.microsoft.com/en-us/powershell/dsc/pull-server/securemof).

```PowerShell
configuration Example
{
    Import-DscResource -ModuleName PowerStig

    Node targetnode
    {
        SqlServer Instance 
        {
            SqlVersion     = '2012'
            SqlRole        = 'Instance'
            ServerInstance = 'SQL2012Server'
        }
    }
}

$cred = Get-Credential

$ConfigData= @{
    AllNodes = @(
        @{
            NodeName = "targetNode"
            CertificateFile = "C:\publicKeys\targetNode.cer"
            Thumbprint = "AC23EA3A9E291A75757A556D0B71CBBF8C4F6FD8"
        };
    );
}
Example -PsDscRunAsCredential $cred -ConfigurationData $ConfigData