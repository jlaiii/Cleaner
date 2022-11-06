$ErrorActionPreference = 'SilentlyContinue'
write-host "MUST RUN AS ADMIN!"
Function Check-RunAsAdministrator()
{
  #Get current user context
  $CurrentUser = New-Object Security.Principal.WindowsPrincipal $([Security.Principal.WindowsIdentity]::GetCurrent())
  
  #Check user is running the script is member of Administrator Group
  if($CurrentUser.IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator))
  {
       Write-host "Script is running with Administrator privileges!"
  }
  else
    {
       #Create a new Elevated process to Start PowerShell
       $ElevatedProcess = New-Object System.Diagnostics.ProcessStartInfo "PowerShell";
 
       # Specify the current script path and name as a parameter
       $ElevatedProcess.Arguments = "& '" + $script:MyInvocation.MyCommand.Path + "'"
 
       #Set the Process to elevated
       $ElevatedProcess.Verb = "runas"
 
       #Start the new elevated process
       [System.Diagnostics.Process]::Start($ElevatedProcess)
 
       #Exit from the current, unelevated, process
       Exit
 
    }
}
 
#Check Script is running with Elevated Privileges
Check-RunAsAdministrator
clear

Set-ExecutionPolicy "Unrestricted"
$Title = "E-Vaders Cleaner v0.8"
$host.UI.RawUI.WindowTitle = $Title

Get-ChildItem -Path "main.ps1" | Foreach-Object {Remove-Item $_ -Force -recurse}
clear
Write-Host "E-Vaders Cleaner"
Start-Sleep -Seconds 2
Write-Host ""
Write-Host "Supported Games: All steam games, epic games, rockstar games and Riot Games"
Start-Sleep -Seconds 2
Write-Host "Starting"
Start-Sleep -Seconds 1



$pathUD = "C:\Program Files (x86)\Steam\userdata\"
$pathDU = "C:\Program Files (x86)\Steam\dumps\"
$pathLO = "C:\Program Files (x86)\Steam\logs\"
$pathCO = "C:\Program Files (x86)\Steam\config\"
$pathACF = "C:\Program Files (x86)\Steam\steamapps\*" #Change path
$regSU = "HKCU:\Software\Valve\Steam\Users\*"
$regRU = "HKCU:\Software\Facepunch Studios LTD\Rust\"

Write-Host "killing & Stopping Anti-Cheats and game Process's"
Start-Sleep -Seconds 1
Stop-Process -processname "BEService*"
Stop-Process -processname "EasyAnti*"
Stop-Process -processname "Steam*"
Stop-Process -processname "rust*"
Stop-Process -processname "arma*"
Stop-Process -processname "EpicGames*"
Stop-Process -processname "SocialClub*"
stop-service "BEService"
stop-service "EasyAntiCheat_EOS"
stop-service "EasyAntiCheat"
Get-Service -Name "EasyAntiCheat*"
Get-Service -Name "BEService*"
Start-Sleep -Seconds 1
Write-Host "Deleting Data: EasyAntiCheat, BattlEye, EpicGames, Fortnite, Facepunch, Rockstar, Steam, Arma, Riot Game, Temp & Logs."
Write-Host "Deleting Cheat Configs: LostCheats, PlantHack"
Write-Host "Please WAIT!"

$path0 = 'C:\'
Get-ChildItem $path0 -Recurse -Force -Directory -Include 'EasyAnti*', 'BattlEye*', 'Riot Game*' | Remove-Item -Recurse -Confirm:$false -Force

Remove-Item 'C:\Assets' -Recurse
Remove-Item 'C:\Program Files (x86)\Rockstar Games' -Recurse

#Any Games in steam folder
#$path = 'C:\Program Files (x86)\Steam\steamapps\common'
#Get-ChildItem $path -Recurse -Force -Directory -Include 'EasyAntiCheat', 'BattlEye' | Remove-Item -Recurse -Confirm:$false -Force

#any thing in appdata
$path2 = 'C:\Users\*\AppData'
Get-ChildItem $path2 -Recurse -Force -Directory -Include 'EasyAntiCheat', 'BattlEye', 'LCSSD', 'Facepunch Studios LTD', 'Arma 3 Launcher', 'EpicGamesLauncher', 'FortniteGame', 'Riot Games', 'Epic Games', 'Rockstar Games', 'Steam', 'Logs', 'Temp' , 'log', 'Arma 3' | Remove-Item -Recurse -Confirm:$false -Force
Write-Host "EasyAntiCheat, BattlEye Removed & Riot Game Removed"

#any thing in Documents
$path3 = 'C:\Users\*\Documents'
Get-ChildItem $path3 -Recurse -Force -Directory -Include 'Impulse', 'Rockstar Games' | Remove-Item -Recurse -Confirm:$false -Force


Write-Host "Cleaning Steam User Data"
Start-Sleep -Seconds 1
Get-ChildItem -Path $pathUD -Include * | remove-Item -recurse 
Get-ChildItem -Path $pathDU -Include * | remove-Item -recurse 
Get-ChildItem -Path $pathLO -Include * | remove-Item -recurse 
Get-ChildItem -Path $pathCO -Include * | remove-Item -recurse
Remove-Item –path $pathACF -include *.acf


#Cod2019
Write-Host "Cleaning Cod2019"
Get-ChildItem -Path "C:\Program Files (x86)\Call of Duty Modern Warfare\main\data0.dcache" | Foreach-Object {Remove-Item $_ -Force -recurse}
Get-ChildItem -Path "C:\Program Files\Call of Duty Modern Warfare\main\data0.dcache" | Foreach-Object {Remove-Item $_ -Force -recurse}
Get-ChildItem -Path "C:\Program Files (x86)\Call of Duty Modern Warfare\main\recipes\cmr_hist" | Foreach-Object {Remove-Item $_ -Force -recurse}
Get-ChildItem -Path "C:\Program Files\Call of Duty Modern Warfare\main\recipes\cmr_hist" | Foreach-Object {Remove-Item $_ -Force -recurse}
Get-ChildItem -Path "C:\Program Files (x86)\Call of Duty Modern Warfare\Data\data\shmem" | Foreach-Object {Remove-Item $_ -Force -recurse}
Get-ChildItem -Path "C:\Program Files\Call of Duty Modern Warfare\Data\data\shmem" | Foreach-Object {Remove-Item $_ -Force -recurse}
Get-ChildItem -Path "C:\Program Files (x86)\Call of Duty Modern Warfare\main\toc1.dcache" | Foreach-Object {Remove-Item $_ -Force -recurse}
Get-ChildItem -Path "C:\Program Files\Call of Duty Modern Warfare\main\toc1.dcache" | Foreach-Object {Remove-Item $_ -Force -recurse}
Get-ChildItem -Path "C:\Program Files (x86)\Call of Duty Modern Warfare\main\toc0.dcache" | Foreach-Object {Remove-Item $_ -Force -recurse}
Get-ChildItem -Path "C:\Program Files\Call of Duty Modern Warfare\main\toc0.dcache" | Foreach-Object {Remove-Item $_ -Force -recurse}
Get-ChildItem -Path "C:\Program Files (x86)\Call of Duty Modern Warfare\main\data1.dcache" | Foreach-Object {Remove-Item $_ -Force -recurse}
Get-ChildItem -Path "C:\Program Files\Call of Duty Modern Warfare\main\data1.dcache" | Foreach-Object {Remove-Item $_ -Force -recurse}
Get-ChildItem -Path "C:\Users\*\Documents\Call of Duty Modern Warfare" | Foreach-Object {Remove-Item $_ -Force -recurse}
Get-ChildItem -Path "C:\Users\*\AppData\Local\Battle.net" | Foreach-Object {Remove-Item $_ -Force -recurse}
Get-ChildItem -Path "C:\Users\*\AppData\Local\Blizzard Entertainment" | Foreach-Object {Remove-Item $_ -Force -recurse}
Get-ChildItem -Path "C:\Users\*\AppData\Roaming\Battle.net" | Foreach-Object {Remove-Item $_ -Force -recurse}
Get-ChildItem -Path "C:\Users\*\C:\Users\PC\AppData\Roaming\Battle.net" | Foreach-Object {Remove-Item $_ -Force -recurse}
Get-ChildItem -Path "C:\ProgramData\Battle.net" | Foreach-Object {Remove-Item $_ -Force -recurse}
Get-ChildItem -Path "C:\ProgramData\Blizzard Entertainment" | Foreach-Object {Remove-Item $_ -Force -recurse}
Write-Host "Steam data cleared"


Write-Host "Cleaning Registry for steam and rust"
Remove-item -Path $regSU -Force -Recurse
Remove-item -Path $regRU -Force -Recurse
Write-Host "Registry Keys have been cleared"

Write-Host " "
Write-Host " "
Write-Host "Cleaning Complete!"
Start-Sleep -Seconds 1
Write-Host " "
Write-Host "Please Restart your PC..."
Write-Host " "
Write-Host " "
Write-Host "Discord: Ring0#3557"
Start-Sleep -Seconds 15
