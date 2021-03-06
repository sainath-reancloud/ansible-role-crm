Param(
    [string]$runAsUser,
    [string]$runAsPassword
)

$Prin = New-ScheduledTaskPrincipal -GroupId "BUILTIN\Administrators" -RunLevel Highest

$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument '-NoProfile -WindowStyle Hidden -file "C:\Installers\CRMUpdateInstall.ps1"'
$trigger = New-ScheduledTaskTrigger -AtStartup
Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "CRM_Update_Install" -Description "CRM Update Installation processs" -User $runAsUser -Password $runAsPassword
	
