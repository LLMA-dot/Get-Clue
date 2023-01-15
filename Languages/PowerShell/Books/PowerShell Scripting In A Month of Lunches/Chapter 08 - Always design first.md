# PowerShell Scripting in a Month of Lunches
# by Don Jones & Jeff Hicks

# Chapter 8: Always design first

# 8.3 Tools are flexible
Get-Content names.txt | Set-MachineStatus
Get-ADComputer -filter * | Select-Expand Name | Set-MachineStatus
Get-ADComputer -filter * | Set-MachineStatus
Set-MachineTatus -ComputerName (Get-Content names.txt)

# Be careful of context
Get-MachineInfo -ComputerName CLIENT
Get-MachineInfo -ComputerName CLIENTA,CLIENTB
Get-MachineInfo -ComputerName (Get-Content names.txt)
Get-MachineInfo -ComputerName (Get-ADComputer -id CLIENTA | Select -Expand Name)
Get-Content names.txt | Get-MachineInfo 
Get-ADComputer -id CLIENTA  | Select -Expand Name | Get-MachineInfo

# The Beauty of Usage Examples in design
Get-MachineInfo -ComputerName PC1,PC2 -Protocol WMI -ProtocolFallback

# Examples Your Turn
Set-TMServiceLogon -ServiceName LOBApp 
-NewPassword "P@ssw0rd"
-ComputerName SERVER1,SERVER2
-ErrorLogFilePath failed.txt
-Verbose

Set-TMServiceLogon -ServiceName OurService
-NewPassword "P@ssw0rd"
-NewUser "Company\User"
-ComputerName SERVER1,SERVER2

Get-Content servers.txt | 
Set-TMServiceLogon -ServiceName TheService -NewPassword "P@ssw0rd"

Import-CSV toChange.CSV | Set TMServiceLogon | Convert-ToHTML

