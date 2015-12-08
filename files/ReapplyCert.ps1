# "CERT:\LocalMachine\My" "*"

param(    
    [string]$CertPath,
    [string]$CertWildCard
)

$Name = "Microsoft Dynamics CRM"
$IPAddress = "*"

$ErrorActionPreference = "Stop";

Import-Module WebAdministration

$sslCertificate = gci $CertPath | Where-Object {$_.Subject -match "$CertWildCard"}
if (-not $sslCertificate) {
	Throw "Cannot find SSL certificate for $Name, cannot configure HTTPS... Installed Certificates are:"
	gci CERT:\LocalMachine\My | ft
}

Remove-Item -Path "IIS:\SslBindings\$IPAddress!443"
New-Item -Path "IIS:\SslBindings\$IPAddress!443" -Value $sslCertificate

iisreset



