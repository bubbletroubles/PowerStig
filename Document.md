# Documentation

(Coming Soon)

Documentation tends to be a big part of STIG compliance.
We are working to integrate functionality that will create checklists for you automatically.
Currently, we do not carry the stig details forward in the PowerStig data, so you need to provide the raw STIG file so that the extra details can be added to the checklist file.

## Generating a checklist from a MOF

To validate MOF before you deploy it, you can create a checklist from it by running the following command.

```powershell
$ReferenceConfiguration = ".\reference.mof"
$XccdfPath = '.\U_Windows_2012_and_2012_R2_MS_STIG_V2R12_Manual-xccdf.xml'
$outputPath = ".\checklist.ckl"

New-StigCheckList -ReferenceConfiguration $ReferenceConfiguration -XccdfPath $XccdfPath -OutputPath $outputPath
```

## Generate a checklist from the DSC results

Once a configuration is deployed to a server, you can generate checklists directly from the Test-DscConfiguration results.

```powershell
$DscResults = Test-DsCconfiguration -ComputerName localhost
$XccdfPath  = '.\U_Windows_2012_and_2012_R2_MS_STIG_V2R12_Manual-xccdf.xml'
$outputPath = ".\checklist.ckl"

New-StigCheckList -DscResult $DscResults -XccdfPath $XccdfPath -OutputPath $outputPath
```
