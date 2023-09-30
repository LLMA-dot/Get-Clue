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
    [Parameter(Mandatory = $true, Position = 0)]
    [ValidateNotNull()]
    [string]$smtpServer,
    # Notify Users if Expiry less than X days
    [Parameter(Mandatory = $true, Position = 1)]
    [ValidateNotNull()]
    [int]$expireInDays,
    # From Address eg "IT Support <support@domain.com>"
    [Parameter(Mandatory = $true, Position = 2)]
    [ValidateNotNull()]
    [string]$from,
    [Parameter(Position = 3)]
    [switch]$logging,
    # Log File Path
    [Parameter(Position = 4)]
    [string]$logPath,
    # Testing Enabled
    [Parameter(Position = 5)]
    [switch]$testing,
    # Test Recipient, eg recipient@domain.com
    [Parameter(Position = 6)]
    [string]$testRecipient,
    [Parameter(Position = 7)]
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
$smtpServerLabel = "SMTP Server".PadRight($padVal, " ")
$expireInDaysLabel = "Expire in Days".PadRight($padVal, " ")
$fromLabel = "From".PadRight($padVal, " ")
$testLabel = "Testing".PadRight($padVal, " ")
$testRecipientLabel = "Test Recipient".PadRight($padVal, " ")
$logLabel = "Logging".PadRight($padVal, " ")
$logPathLabel = "Log Path".PadRight($padVal, " ")
if ($testing) {
    if (($testRecipient) -eq $null) {
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
Write-Output "*".PadRight(25, "*")

# Get Users
$Users = Get-ADUser -filter { (Enabled -eq $true) -and (PasswordNeverExpires -eq $false) } -properties Name, PasswordNeverExpires, PasswordExpired, PasswordLastSet, EmailAddress | Where-Object { $_.PasswordExpired -eq $false }

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
    $userObj = New-Object System.Object
    $expireson = $pwdLastSet.AddDays($maxPasswordAge)
    $daysToExpire = New-TimeSpan -Start $today -End $expireson

    # Round Up or Down

    if (($daysToExpire.Days -eq "0") -and ($daysToExpire.TotalHours -le $timeToMidnight.TotalHours)) {
        $userObj | Add-Member -Type NoteProperty -Name UserMessage -Value "today."
    }

    if (($daysToExpire.Days -eq "0") -and ($daysToExpire.TotalHours -gt $timeToMidnight.TotalHours) -or ($daysToExpire.Days -eq "1") -and ($daysToExpire.TotalHours -le $timeToMidnight2.TotalHours)) {
        $userObj | Add-Member -Type NoteProperty -Name UserMessage -Value "tomorrow."
    }

    if (($daysToExpire.Days -ge "1") -and ($daysToExpire.TotalHours -gt $timeToMidnight2.TotalHours)) {
        $days = $daysToExpire.TotalDays
        $days = [math]::Round($days)
        $userObj | Add-Member -Type NoteProperty -Name UserMessage -Value "in $days days."
    }

    $daysToExpire = [math]::Round($daysToExpire.TotalDays)

    $userObj | Add-Member -Type NoteProperty -Name UserName -Value $samAccountName
    $userObj | Add-Member -Type NoteProperty -Name Name -Value $Name
    $userObj | Add-Member -Type NoteProperty -Name EmailAddress -Value $emailaddress
    $userObj | Add-Member -Type NoteProperty -Name PasswordSet -Value $pwdLastSet
    $userObj | Add-Member -Type NoteProperty -Name DaysToExpire -Value $daysToExpire
    $userObj | Add-Member -Type NoteProperty -Name ExpiresOn -Value $expireson
    
    $colUsers += $userObj
} #ForEach 

$colUsersCount = ($colUsers | Measure-Object).Count
Write-Output "$colusersCount Users processed"
$notifyUsers = $colUsers | Where-Object { $_.DaysToExpire -le $expireInDays }
$notifiedUsers = @()
$notifyCount = ($notifyUsers | Measure-Object).Count
Write-Output "$notifyCount Users to notify"

foreach ($user in $notifyUsers) {

    # Email Address
    $samAccountName = $user.UserName
    $emailaddress = $user.EmailAddress

    # Set Greeting Message
    $name = $User.Name
    $messageDays = $user.UserMessage

    # Subject Setting

    $subject = "Your password will expire $messageDays"

    # Email Body set here, note you can use HTML, including images.
    $body = "
    <font face=""verdana"">
    Dear $name,
    <p> Your Password will expire $messageDays<br>
    To Change your passwqord on a PC press CRTL ALT Delete and chooce Change Password.<br>
    If you are using a MAC you can now change your password via Web Mail. <br>
    Login to <a href=""https://mail.domain.com/owa"">Web Mail</a> click on Options, then Change Password.
    
    <p>Don't forget to Update the password on your Mobile Devices as well!</p>
    <p>Thanks, <br></p>
    IT Support 
    <a href =""mailto:support@domain.com""?Subject=Password Expiry Assistance"">support@domain.com</a> | 0123 456 78910
    </font>"

    # If Testing is enabled - Email Administrator
    if ($testing) {
        $emailaddress = $testRecipient
    } # End Testing

    # If a user has no email address lsited
    if (($emailaddress) -eq $null) {
        $emailaddress = $testRecipient
    } # End no Valid Email

    $samLabel = $samAccountName.PadRight($padVal, " ")

    if ($status) {
        Write-Output "Sending Email : $samLabel : $emailAddress"
    }
    try {
        Send-MailMessage -SmtpServer $smtpServer -from $from -to $emailaddress -Subject $subject -Body $body -bodyasHTML -Priority High -Encoding $textEncoding -ErrorAction Stop
        $user | Add-Member -MemberType NoteProperty -Name SendMail -Value "OK"
    } 
    catch {
        $errorMessage = $_.Exception.Message
        if ($status) {
            $errorMessage  
        }
        $notifiedUsers += $user
    }

    if ($logging) {
        #Create Log File
        Write-Output "Creating Log File"
        $day = $today.Day
        $month = $today.Month
        $year = $today.Year
        $date = "$day-$month-$year"
        $logFileName = "$date-PasswordLog.csv"
        if ($logpath.EndsWith(("\"))) {
            $logfile = $logPath + "\"
        }
        $logfile = $logFile + $logFileName
        Write-Output "Log Output: $logfile"
        $notifiedUsers | Export-CSV $logfile
    } # IF
} #FOREACH

$notifiedUsers | Select-Object UserName, Name, EmailAddress,PasswordSet,DaysToExpire,ExpiresOn | Sort-Object DaystoExpire | FT -AutoSize

$stop = [datetime]::Now
$runTime = New-TimeSpan $start $stop
Write-Output "Script Runtime: $runtime"
# End

