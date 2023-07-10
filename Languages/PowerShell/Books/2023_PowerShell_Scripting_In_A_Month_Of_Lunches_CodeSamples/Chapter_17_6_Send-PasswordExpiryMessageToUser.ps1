function Send-PasswordExpiryMessageToUser {

    [CmdletBinding()]
    param (
        [Parameter(ValueFromPipeline=$True)]
        [object[]]$InputObject,
        
        [Parameter(Mandatory=$True)]
        [string]$from,
    
        [Parameter(Mandatory=$True)]
        [string]$smtpServer

        )

        BEGIN {}

        PROCESS {
            ForEach ($User in $InputObject) {
                $subject = "Password expires $($user.UserMessage)"
                $body = "
                Dear $(user.name),
                Your password will expire $($User.UserMessage).
                Please change it.

                Love, the Help Desk."
                
                if ($PSCmdlet.ShouldProcess("send expiry notice","$($user.name) who expires $($user.UserMessage)")) {
                    Send-MailMessage -SmtpServer $smtpServer -From $from -To $user.EmailAddress -Subject $subject -body $body -Priority High        
                }
                
                Write-Output $User

            } # Foreach

        } # Process

        END {}

} # Function