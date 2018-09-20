pushd %~dp0

PowerShell -ExecutionPolicy Bypass ".\RemovePins.ps1"

registrychanges.reg

PowerShell -ExecutionPolicy Bypass ".\RemoveBuiltInPrograms.ps1"

PowerShell -ExecutionPolicy Bypass ".\DisableTelemetryServices.ps1"

FinishedMessage.vbs
