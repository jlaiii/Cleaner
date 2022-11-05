$ErrorActionPreference = 'SilentlyContinue'


Get-ChildItem -Path "main.ps1" | Foreach-Object {Remove-Item $_ -Force -recurse}
clear
Write-Host "E-Vaders Cleaner"
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
Stop-Process -processname "BEService"
Stop-Process -processname "EasyAntiCheat"
Stop-Process -processname "Steam"
Stop-Process -processname "rustclient"
Stop-Process -processname "arma3"
Stop-Process -processname "EpicGamesLauncher"
stop-service "BEService"
stop-service "EasyAntiCheat_EOS"
stop-service "EasyAntiCheat"

Write-Host "Deleting Data: EasyAntiCheat, BattlEye, EpicGames, Fortnite, Facepunch, Rockstar, Steam, Arma, Riot Game, Temp & Logs."
Write-Host "Deleting Cheat Configs: LostCheats, PlantHack"
Start-Sleep -Seconds 1

Get-ChildItem -Path "C:\Assets" | Foreach-Object {Remove-Item $_ -Force -recurse}

$path = 'C:\Program Files (x86)\Steam\steamapps\common'
Get-ChildItem $path -Recurse -Force -Directory -Include 'EasyAntiCheat', 'BattlEye' | Remove-Item -Recurse -Confirm:$false -Force

$path2 = 'C:\Users\*\AppData'
Get-ChildItem $path2 -Recurse -Force -Directory -Include 'EasyAntiCheat', 'BattlEye', 'LCSSD', 'Facepunch Studios LTD', 'Arma 3 Launcher', 'EpicGamesLauncher', 'FortniteGame', 'Riot Games', 'Epic Games', 'Rockstar Games', 'Steam', 'SteamVR', 'Logs', 'Temp' , 'log' | Remove-Item -Recurse -Confirm:$false -Force
Write-Host "EasyAntiCheat, BattlEye Removed & Riot Game Removed"

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
