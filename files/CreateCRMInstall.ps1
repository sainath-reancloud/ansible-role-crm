Param(
[string]$roles, 
[string]$sqlServerName, 
[string]$reportingURL, 
[string]$createDB,
[string]$orgName, 
[string]$defaultWeb, 
[string]$defaultPort, 
[string]$defaultOU, 
[string]$preferredDC, 
[string]$adminUser, 
[string]$adminPassword
)

$roles = '"' + $roles + '"'
$defaultOU = '"' + $defaultOU + '"'

$scriptargs = @($roles, $sqlServerName, $reportingURL, $createDB, $orgName, $defaultWeb, $defaultPort, $defaultOU, $preferredDC, $adminUser, $adminPassword, $isoDrive)
"C:\Installers\RunCRMInstall_dynamic.ps1 $scriptargs" | out-file -filepath C:\Installers\ExecuteCrm.ps1 -width 200


