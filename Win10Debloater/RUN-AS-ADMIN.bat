pushd %~dp0

registrychanges.reg

PowerShell -ExecutionPolicy Bypass ".\RemoveBuiltInPrograms.ps1"

PowerShell -ExecutionPolicy Bypass ".\DisableTelemetryServices.ps1"

#Disable Suggestions in Start
reg add "HKEY_CURRENT_USER\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\ContentDeliveryManager\" /v "SystemPaneSuggestionsEnabled\" /t REG_DWORD /d 0 /f
REM 1 = This PC, 2 = Quick access
REM reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "LaunchTo" /t REG_DWORD /d 1 /f

FinishedMessage.vbs
