$action = New-ScheduledTaskAction -Execute "C:\Program Files\openhardwaremonitor-v0.9.6\OpenHardwareMonitor\OpenHardwareMonitor.exe"

$principal = New-ScheduledTaskPrincipal -UserId "YOURDOMAIN\YourUsername" `
                                        -LogonType Password `
                                        -RunLevel Highest

Register-ScheduledTask -TaskName "Open Hardware Monitor" `
                       -Action $action `
                       -Principal $principal `
                       -Password "YourAccountPassword"
