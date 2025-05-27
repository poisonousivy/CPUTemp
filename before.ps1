if (-not (Get-Process -Name "Open Hardware Monitor" -ErrorAction SilentlyContinue)) {
    Start-ScheduledTask -TaskName "Open hardware monitor"
}
