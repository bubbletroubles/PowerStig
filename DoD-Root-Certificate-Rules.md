# Documentation

**Applies to: PowerStig 4.6 or later**

Functionality was added to include the ability to confirm DOD root certificates are in the correct location as required by DISA and up to date based on STIG

## Steps to use new functionality

1. Download  InstallRoot
[InstallRoot](https://public.cyber.mil/pki-pke/end-users/getting-started/#toggle-id-1)

2. Download the FBCA Cross-Certificate Remover 
[FBCA Cross-Certificate Remover](https://public.cyber.mil/unclass-fbca_crosscert_remover_v118)

3. Run InstallRoot as Administrator
4. Run FBCA_crosscert_remover as Administrator
5. Get Thumbprints for your technlogy from PowerStig (Stigdata\Processed)
```powershell
# Ensure PowerSTIG is installed on host computer
#This example gets the thumbprints from Windows Client V2R1 Processed STIG, then exports to the c:\ drive

Import-Module PowerStig -verbose -force
$powerSTIGpath = (Get-Module -Name PowerSTIG).ModuleBase
$processedSTIG = "WindowsClient-10-2.1.xml"

$processSTIGpath = '{0}\StigData\Processed\{1}' -f $powerSTIGpath, $processedSTIG

# Get thumbprints from processed STIG
$thumbprints = ([xml] $test = Get-Content $processSTIGpath).DISASTIG.RootCertificateRule.rule.thumbprint 

# Export thumbprints to c:\ drive 
foreach ($thumbprint in $thumbprints)
{
        
    $certificate = Get-ChildItem -Path "Cert:\LocalMachine\Root" | where Thumbprint -eq $thumbprint
    if($null -eq $certificate)
    {
        $certificate = Get-ChildItem -Path "Cert:\LocalMachine\Disallowed" | where Thumbprint -eq $thumbprint
    }
    $filePath = "C:\{0}.cer" -f $Thumbprint
    Export-Certificate -Cert $certificate -Type CERT -FilePath $filePath -NoClobber
}

```
6. Place exported certificates in a location that endpoint "SYSTEM" accounts will have access (ie %TEMP%)
7. Reference location of certificates for each RootCertificateRule Organizational file for your technology
```powershell

<!--
    The organizational settings file is used to define the local organizations
    preferred setting within an allowed range of the STIG.

    Each setting in this file is linked by STIG ID and the valid range is in an
    associated comment.
-->
<OrganizationalSettings fullversion="2.1">
  <!-- Ensure ValueData is set to 0x00000006 (6) or greater -->
  <OrganizationalSetting id="V-220704" ValueData="" />
  <!-- Ensure ''V-220739'' -ge '15' -or ''V-220739'' -eq '0'-->
  <OrganizationalSetting id="V-220739" PolicyValue="15" />
  <!-- Ensure ''V-220740'' -le '3' -and ''V-220740'' -ne '0'-->
  <OrganizationalSetting id="V-220740" PolicyValue="3" />
  <!-- Ensure ''V-220741'' -ge '15'-->
  <OrganizationalSetting id="V-220741" PolicyValue="15" />
  <!-- Ensure ''V-220742'' -ge '24'-->
  <OrganizationalSetting id="V-220742" PolicyValue="24" />
  <!-- Ensure ''V-220743'' -le '60' -and ''V-220743'' -ne '0'-->
  <OrganizationalSetting id="V-220743" PolicyValue="30" />
  <!-- Ensure ''V-220744'' -ge '1'-->
  <OrganizationalSetting id="V-220744" PolicyValue="1" />
  <!-- Ensure ''V-220745'' -ge '14'-->
  <OrganizationalSetting id="V-220745" PolicyValue="14" />
  <!-- Ensure ''V-220779'' -ge '32768'-->
  <OrganizationalSetting id="V-220779" ValueData="32768" />
  <!-- Ensure ''V-220780'' -ge '1024000'-->
  <OrganizationalSetting id="V-220780" ValueData="1024000" />
  <!-- Ensure ''V-220781'' -ge '32768'-->
  <OrganizationalSetting id="V-220781" ValueData="32768" />
  <!-- Ensure ''V-220806'' -match '1|ShouldBeAbsent'-->
  <OrganizationalSetting id="V-220806" ValueData="1" />
  <!-- Ensure ''V-220811.b'' -match '1|3'-->
  <OrganizationalSetting id="V-220811.b" ValueData="1" />
  <!-- Ensure ''V-220813'' -match '1|3|8'-->
  <OrganizationalSetting id="V-220813" ValueData="1" />
  <!-- Ensure ''V-220818'' -match '1|ShouldBeAbsent'-->
  <OrganizationalSetting id="V-220818" ValueData="1" />
  <!-- Ensure 'V-220836.b' -eq 1|2-->
  <OrganizationalSetting id="V-220836.b" ValueData="1" />
  <!-- Ensure ''V-220837'' -match '0|ShouldBeAbsent'-->
  <OrganizationalSetting id="V-220837" ValueData="0" />
  <!-- Ensure ''V-220838'' -match '0|ShouldBeAbsent'-->
  <OrganizationalSetting id="V-220838" ValueData="0" />
  <!-- Ensure ''V-220839'' -match '0|ShouldBeAbsent'-->
  <OrganizationalSetting id="V-220839" ValueData="0" />
  <!-- Ensure ''V-220847'' -ge '6'-->
  <OrganizationalSetting id="V-220847" ValueData="6" />
  <!-- Ensure ''V-220854'' -match '0|ShouldBeAbsent'-->
  <OrganizationalSetting id="V-220854" ValueData="0" />
  <!-- Ensure ''V-220858'' -match '0|ShouldBeAbsent'-->
  <OrganizationalSetting id="V-220858" ValueData="0" />
  <!-- Ensure location for DoD Root CA 2 certificate is present-->
  <OrganizationalSetting id="V-220903.a" Location="c:\8C941B34EA1EA6ED9AE2BC54CF687252B4C9B561.cer" />
  <!-- Ensure location for DoD Root CA 3 certificate is present-->
  <OrganizationalSetting id="V-220903.b" Location="c:\D73CA91102A2204A36459ED32213B467D7CE97FB.cer" />
  <!-- Ensure location for DoD Root CA 4 certificate is present-->
  <OrganizationalSetting id="V-220903.c" Location="c:\B8269F25DBD937ECAFD4C35A9838571723F2D026.cer" />
  <!-- Ensure location for DoD Root CA 5 certificate is present-->
  <OrganizationalSetting id="V-220903.d" Location="c:\4ECB5CC3095670454DA1CBD410FC921F46B8564B.cer" />
  <!-- Ensure location for DoD Interoperability Root CA 2 certificate is present-->
  <OrganizationalSetting id="V-220905.a" Location="c:\AC06108CA348CC03B53795C64BF84403C1DBD341.cer" />
  <!-- Ensure location for DoD Interoperability Root CA 1 certificate is present-->
  <OrganizationalSetting id="V-220905.b" Location="c:\A8C27332CCB4CA49554CE55D34062A7DD2850C02.cer" />
  <!-- Ensure location for US DoD CCEB Interoperability Root CA 2 certificate is present-->
  <OrganizationalSetting id="V-220906" Location="c:\AF132AC65DE86FC4FB3FE51FD637EBA0FF0B12A9.cer" />
  <!-- Ensure ''V-220911'' -ne 'Administrator'-->
  <OrganizationalSetting id="V-220911" OptionValue="" />
  <!-- Ensure ''V-220912'' -ne 'Guest'-->
  <OrganizationalSetting id="V-220912" OptionValue="" />
  <!-- Ensure ''V-220918'' -le '30' -and ''V-220918'' -gt '0'-->
  <OrganizationalSetting id="V-220918" ValueData="30" />
  <!-- Ensure ''V-220920'' -le '900' -and ''V-220920'' -gt '0'-->
  <OrganizationalSetting id="V-220920" ValueData="450" />
  <!-- Ensure ''V-220922'' -match '^(DoD Notice and Consent Banner|US Department of Defense Warning Statement)$'-->
  <OrganizationalSetting id="V-220922" ValueData="US Department of Defense Warning Statement" />
  <!-- Ensure ''V-220923'' -le '10'-->
  <OrganizationalSetting id="V-220923" ValueData="10" />
  <!-- Ensure ''V-220924'' -match '1|2'-->
  <OrganizationalSetting id="V-220924" ValueData="1" />
  <!-- Ensure ''V-220955'' -match '2|ShouldBeAbsent'-->
  <OrganizationalSetting id="V-220955" ValueData="2" />
</OrganizationalSettings>


```