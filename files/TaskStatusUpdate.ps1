
sleep -s 30

While((Get-ScheduledTask -TaskName CRM_Update_Install).State -eq "Running"){
    sleep -s 30
}

sleep -s 60

Unregister-ScheduledTask -TaskName CRM_Update_Install -Confirm:$false
