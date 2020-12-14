# Documentation

**Applies to: PowerStig 4.6 or later**

Functionality was added to include the ability to confirm DOD root certificates are in the correct location as required by DISA and up to date based on STIG

## Steps to use new functionality

1. Download  InstallRoot
[InstallRoot] (https://public.cyber.mil/pki-pke/end-users/getting-started/#toggle-id-1)

2. Download the FBCA Cross-Certificate Remover 
[FBCA Cross-Certificate Remover] (https://public.cyber.mil/unclass-fbca_crosscert_remover_v118)

3. Run InstallRoot as Administrator
4. Run FBCA_crosscert_remover as Administrator
5. Get Thumbprints for your technlogy from PowerStig (Stigdata\Processed)
```powershell
	#This example gets the thumbprints from Windows Client V1R23 Processed STIG

	([xml] $test = Get-Content WindowsClient-10-1.23.xml).DISASTIG.RootCertificateRule.rule.thumbprint 

	Output : 
	8C941B34EA1EA6ED9AE2BC54CF687252B4C9B561
	D73CA91102A2204A36459ED32213B467D7CE97FB
	B8269F25DBD937ECAFD4C35A9838571723F2D026
	4ECB5CC3095670454DA1CBD410FC921F46B8564B
	AC06108CA348CC03B53795C64BF84403C1DBD341
	A8C27332CCB4CA49554CE55D34062A7DD2850C02
	AF132AC65DE86FC4FB3FE51FD637EBA0FF0B12A9
```
6. Find and export thumbprints on system with InstallRoot and FBCA_crosscert_remover
```powershell
    $thumbprints = @(
        "8C941B34EA1EA6ED9AE2BC54CF687252B4C9B561",
        "D73CA91102A2204A36459ED32213B467D7CE97FB",
        "B8269F25DBD937ECAFD4C35A9838571723F2D026",
        "4ECB5CC3095670454DA1CBD410FC921F46B8564B",
        "AC06108CA348CC03B53795C64BF84403C1DBD341",
        "A8C27332CCB4CA49554CE55D34062A7DD2850C02",
        "AF132AC65DE86FC4FB3FE51FD637EBA0FF0B12A9"
    )

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
7. Place exported certificates in a location that endpoint "SYSTEM" accounts will have access (ie %TEMP%)
8. Reference location of certificates for each RootCertificateRule Organizational file for your technology