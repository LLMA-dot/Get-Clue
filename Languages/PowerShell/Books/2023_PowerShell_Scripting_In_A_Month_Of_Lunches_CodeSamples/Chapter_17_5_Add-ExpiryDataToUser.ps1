Function Add-ExpiryDataToUser {
    [CmdletBindung()]
    Param(
        [Parameter(ValueFromPipeline = $True)]
        [object[]]$InputObject
    )

    BEGIN {  
        $defaultMaxPasswordAge = (Get-ADDefaultDomainPasswordPolicy -ErrorAction Stop).$maxPasswordAge.Days
        Write-Verbose "Max password age $defaultMaxPasswordAge"
    }

    PROCESS {
        ForEach ($user in $InputObject) {
            # determine max password age for user
            # this will either be based on their policvy or
            # the domain default if no user specific policy exists
            $passPolicy = Get-ADuserResultantPasswordPolicy $user

            if (($passPolicy) -ne $null) {
                $maxAge = ($passPolicy).$maxPasswordAge.Days
            }
            else {
                $maxAge = $defaultMaxPasswordAge
            }

            # Calculate and round days to expire;
            # Create and Append Text messages to user object
            $expiresOn = $user.PasswordLastSet.AddDay($maxPasswordAge)
            $daysToExpire = New-TimeSpan -Start $today -End $expiresOn

            if (($daysToExpire.Days -eq "0") -and ($daysToExpire.TotalHours -le $timeToMidnight.TotalHours)) {
                $user | Add-Member -Type NoteProperty -Name UserMessage -Value "today."                
            }

            if (($daysToExpire.Days -eq "0") -and ($daysToExpire.TotalHours -gt $timeToMidnight.TotalHours) -or ($daysToExpire.Days -eq "1") -and ($daysToExpire.TotalHours -le $timetoMidnight2.TotalHours)) {
                $user | Add-Member -Type NoteProperty -Name UserMessage -Value "tomorrow."
            }

            if (($daysToExpire.Days -ge "1") -and ($daysToExpire.TotalHours -gt $timetoMidnight2.TotalHours)) {
                $days = $daysToExpire.TotalDays
                $days = [math]::Round($days)
                $user | Add-Member -Type NoteProperty -Name UserMessage -Value "in $days days."
            }

            $user | Add-Member -Type NoteProperty -Name DaysToExpire -Value $daysToExpire
            $user | Add-Member -Type NoteProperty -Name ExpiresOn -value $expiresOn

            Write-Output $user

        } # ForEach
    } # Progress

    END {    }

} # Function