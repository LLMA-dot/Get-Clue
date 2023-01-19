# Behind the PowerShell Pipeline
# January Tips

# Buy the subscription, it's worth it!

# Remove Old Module Versions

$mods = Get-Module -list | Where-Object path -notmatch "windows\\system32" | Group-Object -Property name | Where-Object count -gt 1

$mods | Foreach-Object { $_.group | Select-object -skip 1 } | ForEach-Object { Uninstall-Module -name $_.name -requiredversion $_.version -whatif }

# Paste Text into Windows Terminal

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

#JSON
{
    "command" : {
        "action": "sendInput",
        "input": "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12"
    },
    "keys": "ctrl+t"
},

# Converting UTC Dates

get-date -Format U

Get-Date "2/4/2022 1:00PM" -format U

$s = "2/4/2022 1:00PM"
($s -as [datetime]).ToUniversalTime()

(Get-Date "2/4/2022 6:00PM").ToLocalTime()

# Formatting Values

$n = 12345678012/1mb

"{0:f2}" -f n$

"{0:n4}" -f $n

[math]::round($n,2)

Get-Ciminstance win32_operatingsystem |
Select-Object @{Name = "TotalGB";Expression = {($_.TotalVisibleMemorySize/1mb) -as [int]}},
@{Name = "FreeGB";Expression = { [math]::Round($_.freephysicalmemory/1mb,2) }},
@{Name= "PctUsage";Expression = { [math]::Round((($_.totalVisibleMemorySize - $_.FreePhysicalMemory) /$_.totalVisibleMemorySize)*100,2) }}

Get-Ciminstance win32_operatingsystem |
Select-Object @{Name = "TotalGB";Expression = {$_.TotalVisibleMemorySize | Format-Value -unit MB}},
@{Name = "FreeGB";Expression = { $_.freephysicalmemory | Format-Value -Unit MB -Decimal 2}},
@{Name= "PctUsage";Expression = { Format-Percent -Total $_.totalVisibleMemorySize -value ($_.totalVisibleMemorySize - $_.FreePhysicalMemory) }}
