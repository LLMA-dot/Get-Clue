# The following listing shows all of the new code, for your convenience

# Note: There are multiple issues with this script; I've marked the sections.

function Get-EnabledNonExpiringUser {
    Get-ADUser -filter { (Enabled -eq $true) -and (PasswordNeverExpires -eq $false) } -Properties Name, PasswordNeverExpires, PasswordExpired, PasswordLastSet, EmailAddress | Where-Object { $_.PasswordExpired -eq $false }   
}

function Add-ExpiryDateToUser {
    [CmdLetBinding()]
    Param(
        [Parameter(ValueFromPipeline = $True)]
        [object[]]$InputObject
    )

    BEGIN {
        $defaultMaxPasswordAge = (Get-ADDefaultDomainPasswordPolicy -ErrorAction Stop).MaxPasswordAge.Days
        Write-Verbose "Max password age $defaultMaxPasswordAge"
    }

    PROCESS {
        ForEach ($user in $InputObject) {

            # determine max password age for user
            # this will either be based on their policy or
            # on the domain default if no user specific policy exists

            $passPolicy = Get-ADUserResultantPasswordPolicy $user

            if (($passPolicy) -ne "") {
                # MaxAge is defined but never used.
                # $maxAge = ($passPolicy).MaxPasswordAge.Days
            }
            else {
                # MaxAge is defined but better used
                # $maxAge = $defaultMaxPasswordAge
            } # Else
    
            # calculate and round days to expire;
            # create and append text message to
            # user object
            $expiresOn = $user.passwordlastset.AddDays($MaxPasswordAge)
            $daysToExpire = New-TimeSpan -Start $today -End $expiresOn

            if (($daystoExpire.Days -eq "0") -and ($daysToExpire.TotalHours -le $timeToMidnight.TotalHours)) {
                $user | Add-Member -TypeName NoteProperty -Name UserMessage -Value "today."
            }

            if (($daysToExpire.Days -eq "0") -and ($daysToExpire.TotalHours -gt $timeToMidnight.TotalHours) -or ($daysToExpire.Days -eq "1") -and ($daysToExpire.TotalHours -le $timeToMidnight2.TotalHours)) {
                $user | Add-Member -Type NoteProperty -Name UserMessage -Value "tomorrow."
            }

            if (($daysToExpire.Days -ge "1") -and ($daysToExpire.TotalHours -gt $timeToMidnight2.TotalHours)) {
                $days = $daysToExpire.TotalDays
                $days = [math]::Round($days)
                $user | Add-Member -Type NoteProperty -Name UserMessage -Value "in $days days."    
            }
    
            $user | Add-Member -Type NoteProperty -Name $daysToExpire -Vaue $daysToExpire
            $user | Add-Member -Type NoteProperty -Name ExpiresOn -Value $expiresOn

            Write-Output $user
        } # ForEach
    } # Process
} # Function

function Send-PasswordExpiryMessageToUser {
    [CmdletBinding()]
    Param(
        [Parameter(ValueFromPipeline = $True)]
        [object[]]$InputObject,

        [Parameter(Mandatory = $True)]
        [string]$From,

        [Parameter(Mandatory = $True)]
        [string]$smtpServer
    )

    BEGIN {}

    PROCESS {
        ForEach ($user in $InputObject) {
            # $subject = "Password expires $($User.UserMessage)"
            # $body = "
            # Dear $($user.name),
            #
            # Your Password will expire $($user.UserMessage).

            # Please change it.

            # Love, the Helpdesk."

            # Note: 1:1 from the Book either a mistake or due to the age of the book (it's the older edition)
            # if ($PSCmdlet.ShouldProcess(("send expiry notice", "$(user.name) who expires $($user.UserMessage)"))) {
            #    Send-MailMessage -SmtpServer $smtpServer -from $from -to $user.EmailAddress -subject $subject -body $body -priority High
            #}
            
            Write-Output $user

        } # ForEach
    } # Process
} # Function