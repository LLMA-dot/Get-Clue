<#
.SYNOPSIS
Script to Automated Email Reminders when Users Passwords due to Expire.
.DESCRIPTION
Script to Automated Email Reminders when Users Passwords due to Expire.

Robert Pearman (Cloud & Data Center MVP)
WindowsServerEssentials.com
Version 2.3 March 2017
Requires: Windows POwerShell Module for Active Directory

.EXAMPLE
PasswordChangeNotification.ps1 -smtpServer mail.domain.com -expireInDays 21 -from "IT Support <support@domain.com>" -Logging -LogPath "C:\logFiles" -Testing -TestRecipient support@domain.com
.EXAMPLE
PasswordChangeNotification.ps1 -smtpServer mail.domain.com -expireInDays 21 -from "IT Support <support@domain.com>"
#>

param(
    # $smtpServver Enter Your SMTP Server HostName or IP Address
    [Parameter(Mandatory=$true,Position=0)]
    [ValidateNotNull()]
    [string]$smtpServer,
    # Notify Users if Expiry less than X days
    [Parameter(Mandatory=$true,Position=1)]
    [ValidateNotNull()]
    [int]$expireInDays,
    # From Address eg "IT Support <support@domain.com>"
    [Parameter(Mandatory=$true,Position=2)]
    [ValidateNotNull()]
    [string]$from,
    [Parameter(Position = 3)]
    [switch]$logging,
    # Log File Path
    [Parameter(Position=4)]
    [string]$logPath,
    # Testing Enabled
    [Parameter(Position=5)]
    [switch]$testing,
    # Test Recipient, eg recipient@domain.com
    [Parameter(Position=6)]
    [string]$testRecipient,
    [Parameter(Position=7)]
    [switch]$status
) # Param

####################################################

$start = [datetime]::Now
$midnight = $start.Date.AddDays(1)
$timeToMidnight = New-TimeSpan -Start $start -end $midnight.Date
$midnight2 = $start.Date.AddDays(2)
$timeToMidnight2 = New-TimeSpan -Start $start -end $midnight2.Date

# System Settings
$textEncoding = [System.Text.Encoding]::UTF8
$today = $start
# End System Settings

# Get Users From AD who are Enabled, Passwords Expire and are Not Currently Expired
Import-Module Active Directory
$padVal = "20"
Write-Output "Script Loaded"
Write-Output "*** Settings Summary ***"
$smtpServerLabel = "SMTP Server".PadRight($padVal," ")
$expireInDaysLabel = "Expire in Days".PadRight($padVal," ")
$fromLabel = "From".PadRight($padVal," ")
$testLabel = "Testing".PadRight($padVal, " ")
$testRecipientLabel = "Test Recipient".PadRight($padVal, " ")
$logLabel = "Logging".PadRight($padVal," ")
$logPathLabel = "Log Path".PadRight($padVal," ")
if ($testing)
{
    if (($testRecipient) -eq $null) 
    {
        Write-Output "No Test Recipient Specified"
        Exit
    }
}

if ($logging) {
    if (($logPath) -eq $null) {
        $logPath = $PSScriptRoot
    }
}

Write-Output "$smtpServerLabel : $smtpServer"
Write-Output "$expireInDaysLabel : $expireInDays"
Write-Output "$fromLabel : $from"
Write-Output "$logLabel : $logging"
Write-Output "$logPathLabel : $logPath"
Write-Output "$testLabel : $testing"
Write-Output "$testRecipientLabel : $testRecipient"
Write-Output "*".PadRight(25,"*")

# Get Users
$Users = Get-ADUser -filter {(Enabled -eq $true) -and (PasswordNeverExpires -eq $false)} -properties Name, PasswordNeverExpires, PasswordExpired, PasswordLastSet,EmailAddress | Where-Object {$_.PasswordExpired -eq $false}

# Count Users
$usersCount = ($users | Measure-Object).Count
Write-Output "Found $usersCount User Objects"

# Collect Domain Password Policy Information
$defaultMaxPasswordAge = (Get-ADDefaultDomainPasswordPolicy -ErrorAction Stop).$defaultMaxPasswordAge.Days
Write-Output "Domain Default Password Age: $defaultMaxPasswordAge"

# Collect Users
$colUsers = @()

# Process Each User for Password Expiry
Write-Output "Process User Objects"

foreach ($user in $Users) {
    $Name = $user.Name
    $emailaddress = $user.EmailAddress
    $passwordSetDate = $user.PasswordLastSet
    $samAccountName = $user.$samAccountName

    $pwdLastSet = $user.PasswordLastSet

    # Check for Fine Grained Password
    $maxPasswordAge = $defaultMaxPasswordAge
    $PasswordPol = (Get-ADuserResultantPasswordPolicy $user)

    if (($PasswordPol) -ne $null) {
        $maxPasswordAge = ($PasswordPol).$maxPasswordAge.Days
    }

# Create User Object
# Page 329
# To be continued.. .

}