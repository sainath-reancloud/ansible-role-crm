
if(-not(Test-Path HKLM:\SOFTWARE\Microsoft\MSCRM)){
    New-Item -Name MSCRM -Path HKLM:\Software\Microsoft
}

if(Test-Path HKLM:\SOFTWARE\Microsoft\MSCRM){
    If (C:\installers\Test-PathReg.ps1 -Path "HKLM:\Software\Microsoft\MSCRM" -Property "IgnoreChecks"){
        Set-ItemProperty -Path HKLM:\Software\Microsoft\MSCRM -Name IgnoreChecks -Value 1 -Force
    }
    else{
        New-ItemProperty -Path HKLM:\Software\Microsoft\MSCRM -Name IgnoreChecks -PropertyType DWORD -Value 1 -Force
    }
}
