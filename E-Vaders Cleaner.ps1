$ErrorActionPreference = 'SilentlyContinue'
$Title = "E-Vaders Launcher"
$host.UI.RawUI.WindowTitle = $Title
Set-ExecutionPolicy Unrestricted -Force
Write-Host "Downloading Cleaner..."
Start-Sleep -Seconds 1
(New-Object System.Net.WebClient).DownloadFile("https://raw.githubusercontent.com/jlaiii/E-Vaders-Cleaner/main/clean.ps1","main.ps1")
Write-Host "Cleaner Downlaoded"
Start-Sleep -Seconds 1
Write-Host "Running Cleaner"
Start-Sleep -Seconds 1
powershell -executionpolicy bypass -File main.ps1
Get-ChildItem -Path "main.ps1" | Foreach-Object {Remove-Item $_ -Force -recurse}
