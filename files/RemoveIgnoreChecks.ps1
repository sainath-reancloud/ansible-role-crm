
if(Test-Path HKLM:\SOFTWARE\Microsoft\MSCRM){
    If (C:\installers\Test-PathReg.ps1 -Path "HKLM:\Software\Microsoft\MSCRM" -Property "IgnoreChecks"){
        Remove-ItemProperty -Path HKLM:\Software\Microsoft\MSCRM -Name IgnoreChecks -Force
    }
}
