
sleep -s 30

While((Get-ScheduledTask -TaskName CRM_Install).State -eq "Running"){
    sleep -s 30
}

Unregister-ScheduledTask -TaskName CRM_Install -Confirm:$false
