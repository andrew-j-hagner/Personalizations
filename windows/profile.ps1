function global:prompt {

    # Admin Indicator
    if( (New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
    {
        $Host.UI.RawUI.WindowTitle = "[Admin] " + $Host.UI.RawUI.WindowTitle
        Write-Host "[" -nonewline -foregroundcolor DarkGray
        Write-Host "Admin" -nonewline -foregroundcolor Red
        Write-Host "] " -nonewline -foregroundcolor DarkGray
    }
 
    # Colored Paths
    $pwd.Path.Split("\") | foreach {
        Write-Host $_ -nonewline -foregroundcolor Yellow
        Write-Host "\" -nonewline -foregroundcolor Gray
    }

    return "`n> "
}

$DesktopPath = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::Desktop)
$DocumentsPath = [System.Environment]::GetFolderPath([System.Environment+SpecialFolder]::MyDocuments)

function ExplorerHere { explorer.exe . }
Set-Alias "o" ExplorerHere

function GoToDesktop { cd $DesktopPath }
Set-Alias "desk" GoToDesktop

function GoToRepos { cd $DesktopPath/repos }
Set-Alias "repos" GoToRepos

function UpdateProfile {
    $originalLocation = Get-Location
    GoToRepos
    Copy-Item "Personalizations\Windows\profile.ps1" -Destination "$DocumentsPath\WindowsPowerShell\Microsoft.PowerShell_profile.ps1" -Force
    . $profile # Reload Profile
    cd $originalLocation
}
Set-Alias "up" UpdateProfile

function EditProfile {
    code "$DesktopPath\repos\Personalizations\Windows\profile.ps1"
}
Set-Alias "ep" EditProfile

function ListShortcuts {
    Write-Host "o - Open Explorer Here"
    Write-Host "desk - cd to Desktop"
    Write-Host "repos - cd to Repos"
    Write-Host "up - Update Powershell Profile from Repo"
    Write-Host "ep - Edit Powershell Profile via VSCode"
    Write-Host "hmm - This help."
}
Set-Alias "hmm" ListShortcuts