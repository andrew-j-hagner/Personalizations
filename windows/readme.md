# Powershell

`
$DocumentsPath = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::MyDocuments)
Copy-Item "profile.ps1" -Destination "$DocumentsPath\WindowsPowerShell\Microsoft.PowerShell_profile.ps1"
`

`Set-ExecutionPolicy Bypass -Scope CurrentUser -Force`

`iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))`

`choco install dotnetcore -y`

`choco install git -y --params "/NoAutoCrlf"

`choco install conemu -y`

`choco install powershell-core -y`

`choco install vscode -y --params "/NoDesktopIcon /NoQuicklaunchIcon"`

Profile file path:
`C:\Users\AndrewHagner\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1`