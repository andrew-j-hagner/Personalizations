# Windows Setup

Get Windows Terminal

(Windows Term Basics: https://www.youtube.com/watch?v=2dsnwlnNBzs)

Powershell Core: https://github.com/PowerShell/PowerShell

Enable Windows Subsystem Linux under Settings > Apps > Optional Features > More Windows Features

Install Ubuntu from Windows Store, launch to install, setup local/local user

Install Git on Windows: https://git-scm.com/

## Adding exe's to path

e.g. terraform

Run powershell as admin:

    $old = (Get-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name path).path

    $new  =  "$old;<<FOLDER PATH HERE>>"

    Set-ItemProperty -Path 'Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment' -Name path -Value $new

## VS Code

### Render Whitespace
`Ctrl+,` to open settings, search for whitespace.

### Support EditorConfig
Use extensions menu, search for EditorConfig.

