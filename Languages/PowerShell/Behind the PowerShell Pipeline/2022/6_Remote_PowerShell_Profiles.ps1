# Posted on Jeff Hick's Subscription Blog: Behind the PowerShell Pipeline
# Get a sub, it's worth it.

# Examples
#requires -version 5.1

#this is a remote profile script for Windows computers

#Define a session variable that will be used in the
#prompt function
$initiated = Get-Date

#import modules
Import-Module PSReadline

#create a new prompt function for the remote session
$remotePrompt = {
    #display the session runtime without the milliseconds
    $ts = ((Get-Date) - $initiated).ToString().split(".")[0]
    Write-Host ">$ts< " -ForegroundColor yellow -nonewline
    "PS $($executionContext.SessionState.Path.CurrentLocation)$('>' * ($nestedPromptLevel + 1)) ";
}

Set-Item -Path function:\prompt -Value $remotePrompt -Force

Set-Location C:\
Clear-Host

#display some information about the remote computer
$os = Get-CimInstance -ClassName Win32_OperatingSystem

[pscustomobject]@{
    Computer  = $os.csname
    OS        = $os.caption
    OSVersion = $os.Version
    PSVersion = $psversionTable.psversion
    Edition   = $psversionTable.psedition
    User      = (Whoami.exe)
    LocalTime = $os.LocalDateTime
}

#display an ANSI formatted message
Write-Host "$([char]27)[93;3mManually remove the remoting session when finished.$([char]27)[0m"

#Example 2
#requires -version 5.1
Function New-PSConnection {
    [cmdletbinding()]
    Param(
        [Parameter(Mandatory)]
        [string]$Computername,
        [pscredential]$Credential,
        [Parameter(HelpMessage = "The path to the remote profile script on the local computer.")]
        [ValidateScript({ Test-Path $_ })]
        [string]$RemoteProfile = "c:\scripts\RemoteProfile.ps1"
    )

    <#
      Because I will eventually splat PSBoundParameters
      to New-PSSession, I need to remove parameters that New-PSSession
      won't recognize like RemoteProfile
    #>
    if ($PSBoundParameters.ContainsKey("RemoteProfile")) {
        $PSBoundParameters.Remove("RemoteProfile")
    }

    Try {
        $newsession = New-PSSession @PSBoundParameters -ErrorAction Stop
        #run the remote profile script in the remote session
        Invoke-Command -FilePath $RemoteProfile -Session $newsession
        #enter the pssession
        Enter-PSSession $newsession
        #manually remove the PSSession when finished
    }
    Catch {
        Throw $_
    }
}

