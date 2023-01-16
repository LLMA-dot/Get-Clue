# Behind the PowerShell Pipeline
# I will be your host

# Buy the subscription, it's worth it!

#this is an internal, private function so Verb-Noun isn't required
function parseStartType {
    Param([string]$StartType)

    Switch ($startType) {
        "Automatic" { $ansi = "[92m" }
        "Manual" { $ansi = "[93m" }
        "Disabled" { $ansi = "[91m" }
    }

    "$([char]27)$ansi$($startType)$([char]27)[0m"
}
Get-Service | Select-Object Name,
@{Name = "StartType"; Expression = { parseStartType $_.StartType } },Status

# Example 2
function parseStartType {
    Param([string]$StartType)

    if ($host.name -match "console|code") { 
        Switch ($startType) {
            "Automatic" { $ansi = "[92m" }
            "Manual" { $ansi = "[93m" }
            "Disabled" { $ansi = "[91m" }
        }

        "$([char]27)$ansi$($startType)$([char]27)[0m"
    }
    else {
        $StartType
    }
}

# Example 3
Write-Output "I am the walrus"
Write-Host "I am the walrus"

# Example 4
Function Get-BootTime {
Param($Computername= $env:COMPUTERNAME)
  $a = Get-CimInstance win32_operatingsystem -ComputerName $computername
  Write-Host $a.LastBootUpTime
}

# Example 5
Function Get-BootTime {
Param($Computername= $env:COMPUTERNAME)
  $a = Get-CimInstance win32_operatingsystem -ComputerName $computername
  $a.LastBootUpTime
}
