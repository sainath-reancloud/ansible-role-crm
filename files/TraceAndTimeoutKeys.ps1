Param(
    [string]$TraceDirectory,
    [string]$TraceCategories
)


if(Test-Path HKLM:\SOFTWARE\Microsoft\MSCRM){
    # TraceEnabled
    If (C:\installers\Test-PathReg.ps1 -Path "HKLM:\Software\Microsoft\MSCRM" -Property "TraceEnabled"){
        Set-ItemProperty -Path HKLM:\Software\Microsoft\MSCRM -Name TraceEnabled -Value 1 -Force
    }
    else{
        New-ItemProperty -Path HKLM:\Software\Microsoft\MSCRM -Name TraceEnabled -PropertyType DWORD -Value 1 -Force
    }
    # TraceRefresh
    If (C:\installers\Test-PathReg.ps1 -Path "HKLM:\Software\Microsoft\MSCRM" -Property "TraceRefresh"){
        Set-ItemProperty -Path HKLM:\Software\Microsoft\MSCRM -Name TraceRefresh -Value 1 -Force
    }
    else{
        New-ItemProperty -Path HKLM:\Software\Microsoft\MSCRM -Name TraceRefresh -PropertyType DWORD -Value 1 -Force
    }
    # TraceDirectory
    If (C:\installers\Test-PathReg.ps1 -Path "HKLM:\Software\Microsoft\MSCRM" -Property "TraceDirectory"){
        Set-ItemProperty -Path HKLM:\Software\Microsoft\MSCRM -Name TraceDirectory -Value $TraceDirectory -Force
    }
    else{
        New-ItemProperty -Path HKLM:\Software\Microsoft\MSCRM -Name TraceDirectory -PropertyType String -Value $TraceDirectory -Force
    }
    # TraceCategories
    If (C:\installers\Test-PathReg.ps1 -Path "HKLM:\Software\Microsoft\MSCRM" -Property "TraceCategories"){
        Set-ItemProperty -Path HKLM:\Software\Microsoft\MSCRM -Name TraceCategories -Value $TraceCategories -Force
    }
    else{
        New-ItemProperty -Path HKLM:\Software\Microsoft\MSCRM -Name TraceCategories -PropertyType String -Value $TraceCategories -Force
    }
    # TraceCallStack
    If (C:\installers\Test-PathReg.ps1 -Path "HKLM:\Software\Microsoft\MSCRM" -Property "TraceCallStack"){
        Set-ItemProperty -Path HKLM:\Software\Microsoft\MSCRM -Name TraceCallStack -Value 1 -Force
    }
    else{
        New-ItemProperty -Path HKLM:\Software\Microsoft\MSCRM -Name TraceCallStack -PropertyType DWORD -Value 1 -Force
    }
    # TraceFileSizeLimit
    If (C:\installers\Test-PathReg.ps1 -Path "HKLM:\Software\Microsoft\MSCRM" -Property "TraceFileSizeLimit"){
        Set-ItemProperty -Path HKLM:\Software\Microsoft\MSCRM -Name TraceFileSizeLimit -Value 10 -Force
    }
    else{
        New-ItemProperty -Path HKLM:\Software\Microsoft\MSCRM -Name TraceFileSizeLimit -PropertyType DWORD -Value 10 -Force
    }
    # OLEDBTimeout
    If (C:\installers\Test-PathReg.ps1 -Path "HKLM:\Software\Microsoft\MSCRM" -Property "OLEDBTimeout"){
        Set-ItemProperty -Path HKLM:\Software\Microsoft\MSCRM -Name OLEDBTimeout -Value 1500 -Force
    }
    else{
        New-ItemProperty -Path HKLM:\Software\Microsoft\MSCRM -Name OLEDBTimeout -PropertyType DWORD -Value 1500 -Force
    }
    # ExtendedTimeout
    If (C:\installers\Test-PathReg.ps1 -Path "HKLM:\Software\Microsoft\MSCRM" -Property "ExtendedTimeout"){
        Set-ItemProperty -Path HKLM:\Software\Microsoft\MSCRM -Name ExtendedTimeout -Value 1000000 -Force
    }
    else{
        New-ItemProperty -Path HKLM:\Software\Microsoft\MSCRM -Name ExtendedTimeout -PropertyType DWORD -Value 1000000 -Force
    }
    # DisableLoopbackCheck
    If (C:\installers\Test-PathReg.ps1 -Path HKLM:\SYSTEM\CurrentControlSet\Control\Lsa -Property "DisableLoopbackCheck"){
        Set-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\Lsa -Name DisableLoopbackCheck -Value 1 -Force
    }
    else{
        New-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Control\Lsa -Name DisableLoopbackCheck -PropertyType DWORD -Value 1 -Force
    }
}
