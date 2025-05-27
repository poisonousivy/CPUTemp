Get-WmiObject -Namespace root\OpenHardwareMonitor -Class Sensor | Where-Object { $_.SensorType -eq "Temperature" -and $_.Name -like "*CPU*" } | Select-Object -ExpandProperty Value
