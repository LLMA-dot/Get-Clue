<#
15.8.2.

Your job is to add error handling to your tool. Remember, in the event of an error,
the design calls for you to automatically try the DCOM protocol, because you're always starting with
the WSMan protocol. If a computer fails, you should log it ONLY if logging was specified, and only 
after both protocols have been attempted.

Your task is made a little more difficult by the fact that the parameter design doesn't include a
parameter for the protocol. That means you can't just call your own function again with a different
protocol parameter! Instead, you'll have to write a loop that will execute up to two tiumes.

One such loop might look something like this:

Do {
    #code goes here
} Until ($something -eq 'else')

This kind of loop will always execute its contents at least once. It will continue executing
until the condition, specified at the end of the loop, is $true. See if you can puzzle out the
necessary logic to add to your script.
#>

function Set-TMServiceLogon {
    <#
.SYNOPSIS
Sets service login name and password.

.DESCRIPTION
This command uses either CIM (default) or WMI to set the service password,
and optionally the logon user name, for a service, which can be running on
one or more remote machines. You must run this command as a user who has 
permission to perform this task, remotely, on the computers involved.

.PARAMETER ServiceName
The name of the Service. Query the WIN32_Service class to verify that you know 
the correct name.

.PARAMETER ComputerName
One or more computer names. Using IP addresses will fail with CIM; they will work 
with WMI. CIM is always attempted first.

.PARAMETER NewPassword
A plan-text string of the new password.

.PARAMETER NewUser
Optional; the new logon user name, in DOMAIN\User format.

.PARAMETER ErrorLogFilePath
If provided, this is a path and filename of a text file where failed computer names
will be logged.
#>

    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $True, ValueFromPipelineByPropertyName = $True)]
        [string]$ServiceName,

        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $True)]
        [string[]]$ComputerName,

        #Passwords in clear text is not advised - this is discussed in the book
        #[Parameter(ValueFromPipelineByPropertyName = $True)]
        #[string]$newPassword,

        [Parameter(ValueFromPipelineByPropertyName = $True)]
        [string]$NewUser,

        [string]$ErrorLogFilePath
    )

    BEGIN {}

    PROCESS {

        ForEach ($Computer in $ComputerName) {
            
            Write-Verbose "Connect to $Computer on WS-MAN"
            $protocol = "WSMAN"

            Try {

                $option = New-CimSessionOption -Protocol $protocol
                $session = New-CimSession -SessionOption $option -ComputerName $Computer -ErrorAction Stop

                If ($PSBoundParameters.ContainsKey('NewUser')) {
                    $pw_arg = @{'StartName' = $NewUser 
                        'StartPassword'   = $newPassword
                    }
                }
                else {
                    $pw_arg = @{'StartPassword' = $newPassword }
                    Write-Warning "Not setting a new user name"
                }

                Write-Verbose "Setting $servicename on $computer"
                $params = @{'CimSession' = $session
                    'MethodName'         = 'Change'
                    'Query'              = "SELECT * FROM Win32_Service " + "WHERE Name = '$ServiceName'"
                    'Arguments'          = $pw_arg
                }

                $ret = Invoke-CimMethod @params

                switch ($ret.ReturnValue) {
                    0 { $status = "Success" }
                    22 { $status = "Invalid Account" }
                    Default { $status = "Failed: $($ret.ReturnValue)" }
                }

                $props = @{'ComputerName' = $ComputerName
                    'Status'              = $status
                }
                $obj = New-Object -TypeName PSObject -Property $props
                Write-Output $obj

                Write-Verbose "Closing connection to $computer"
                $session | Remove-CimSession
            }
            Catch {
                # change protocol - if we've tried both
                # and logging was specified, log the computer

                switch ($protocol) {
                    'Wsman' { $protocol = 'Dcom' }
                    'Dcom' {
                        $protocol = 'Stop'

                        If ($PSBoundParameters.ContainsKey('ErrorLogFilePath')) {
                            Write-Warning "$computer failed; logged to $ErrorLogFilePath"
                            $computer | Out-File $ErrorLogFilePath -Append
                        } # If Logging
                    }
                } # Switch

            
            } # Try / Catch

        } # ForEach

    } # Process

    END {}

} # function