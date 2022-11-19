$ErrorActionPreference = 'SilentlyContinue'
$Title = "E-Vaders Cleaner v1.0.2"
$host.UI.RawUI.WindowTitle = $Title
Clear-DnsClientCache
clear
Set-ExecutionPolicy Unrestricted -Force

(New-Object System.Net.WebClient).DownloadFile("https://raw.githubusercontent.com/jlaiii/E-Vaders-Cleaner/main/E-Vaders.ps1","E-Vaders.ps1")

Get-ChildItem -Path "E-Vaders Cleaner.ps1" | Foreach-Object {Remove-Item $_ -Force -recurse}




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

Get-Process -Name 'BEService','EasyAnti*','Steam*','rust', 'arma*', 'EpicGame*', 'SocialClub*' | Stop-Process -Force –Verbose

Stop-Service -DisplayName 'BEService*', 'EasyAnti*' –Verbose

Start-Sleep -Seconds 1
Write-Host "Removing EasyAntiCheat & BattlEye"
Write-Host "Removing Cheat configs"
Write-Host "Cleaning game data for cross bans"
Write-Host "Please WAIT!"

$path0 = 'C:\'
Get-ChildItem $path0 -Recurse -Force -Directory -Include 'EasyAnti*', 'BattlEye*', 'Riot Game*' | Remove-Item -Recurse -Confirm:$false -Force -Verbose

Remove-Item 'C:\Assets' -Recurse -Verbose
Remove-Item 'C:\Program Files (x86)\Rockstar Games' -Recurse -Verbose

#any thing in appdata
$path2 = 'C:\Users\*\AppData'
Get-ChildItem $path2 -Recurse -Force -Directory -Include 'EasyAntiCheat', 'BattlEye', 'LCSSD', 'Facepunch Studios LTD', 'Arma 3 Launcher', 'EpicGamesLauncher', 'FortniteGame', 'Riot Games', 'Epic Games', 'Rockstar Games', 'Steam', 'Logs', 'Temp' , 'log', 'Arma 3' | Remove-Item -Recurse -Confirm:$false -Force -Verbose
Write-Host "EasyAntiCheat, BattlEye Removed & Riot Game Removed"

#any thing in Documents
$path3 = 'C:\Users\*\Documents'
Get-ChildItem $path3 -Recurse -Force -Directory -Include 'Impulse', 'Rockstar Games' | Remove-Item -Recurse -Confirm:$false -Force -Verbose


Write-Host "Cleaning Steam User Data"
Start-Sleep -Seconds 1
Get-ChildItem -Path $pathUD -Include * | remove-Item -recurse -Verbose
Get-ChildItem -Path $pathDU -Include * | remove-Item -recurse -Verbose
Get-ChildItem -Path $pathLO -Include * | remove-Item -recurse -Verbose
Get-ChildItem -Path $pathCO -Include * | remove-Item -recurse -Verbose
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
Remove-item -Path $regSU -Force -Recurse -Verbose
Remove-item -Path $regRU -Force -Recurse -Verbose
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
Start-Sleep -Seconds 20


