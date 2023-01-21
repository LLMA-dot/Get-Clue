# Quick notes from Jeff Hick's Blog "Behind the PowerShell Pipeline"
# Definately worth the sub!

# Examples
C:\Windows\System32\WindowsPowerShell\v1.0
C:\Program Files\PowerShell\7
/opt/microsoft/powershell/7

C:\Users\Jeff\Documents\WindowsPowerShell
C:\Users\Jeff\Documents\PowerShell
/home/jeff/.config/powershell

C:\Users\Jeff\Documents\WindowsPowerShell\Microsoft.PowerShell_profile.ps1
C:\Users\Jeff\Documents\PowerShell\Microsoft.PowerShell_profile.ps1
/home/jeff/.config/powershell/Microsoft.PowerShell_profile.ps1
C:\Users\Jeff\Documents\PowerShell\Microsoft.VSCode_profile.ps1
C:\Users\Jeff\Documents\WindowsPowerShell\Microsoft.PowerShellISE_profile.ps1

$profile | Select * -ExcludeProperty length | format-list

New-Item $profile.AllUsersCurrentHost -ItemType File -Force
New-Item $profile -ItemType File -Force
