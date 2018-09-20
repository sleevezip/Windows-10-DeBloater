pushd %~dp0

PowerShell -ExecutionPolicy Bypass ".\RemovePins.ps1"

registrychanges.reg

PowerShell -ExecutionPolicy Bypass ".\RemoveBuiltInPrograms.ps1"

PowerShell -ExecutionPolicy Bypass ".\DisableTelemetryServices.ps1"
REG ADD /"HKEY_CURRENT_USER\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\ContentDeliveryManager\" /v "SystemPaneSuggestionsEnabled\" /t REG_DWORD /d 0 /f
REG ADD /"HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "LaunchTo" /t REG_DWORD /d 1 /f

FinishedMessage.vbs
