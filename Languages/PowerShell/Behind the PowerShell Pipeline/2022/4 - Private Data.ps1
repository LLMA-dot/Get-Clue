# Code snipets from Jeff Hicks Blog "Behind the PowerShell Pipeline"
# The sub is definately worth it, get it now.

# Examples
$host.PrivateData.ErrorForegroundColor = "green"
$host.PrivateData.ErrorBackgroundColor = $host.ui.RawUI.BackgroundColor
$psstyle.Formatting.Error = $psstyle.Foreground.BrightGreen
$host.PrivateData.ErrorForegroundColor = "green"

Function Get-HostPrivateData {
    [cmdletbinding()]
    [outputtype("PSHostPrivateData")]
    Param()

    <#
     PowerShell 7.2 uses $PSStyle which overwrites the
     legacy $host.privatedata for some settings
     #>

    if ($psstyle.Formatting) {
        $settings = "Error", "Warning", "Verbose", "Debug"
        foreach ($item in $settings) {
            $rawansi = $psstyle.Formatting.$item -replace "`e", ""

            [pscustomobject]@{
                PSTypename = "PSHostPrivateData"
                Host       = $host.name
                Option     = $item
                TokenKind  = $item
                Setting    = "PSStyle.Formatting.$item"
                Value      = '`e{0}' -f $rawansi
            }
        }
        $rawansi = $psstyle.progress.style -replace "`e", ""
        [pscustomobject]@{
            PSTypename = "PSHostPrivateData"
            Host       = $host.name
            Option     = "Progress"
            TokenKind  = "Progress"
            Setting    = "PSStyle.Formatting.$item"
            Value      = '`e{0}' -f $rawansi
        }

    }
    else {
        #regular expression to parse property name
        [regex]$rx = "(Back|Fore).*"
        $colorOptions = $host.PrivateData | Select-Object -Property *color
        $colorOptions.psobject.properties | ForEach-Object {
            $token = $rx.split($_.name)[0]
            if ($token -eq 'DefaultToken') {
                $token = 'None'
            }

            [pscustomobject]@{
                PSTypename = "PSHostPrivateData"
                Host       = $host.name
                Option     = $_.name
                TokenKind  = $Token
                Setting    = $rx.match($_.name)
                Value      = $_.value
            }
        } #foreach color option
    }
} #end Get-HostPrivateData

Function Show-HostPrivateData {
    #this command writes to the host
    [cmdletbinding()]
    [OutputType("None", "System.String")]
    Param()

    #this won't work properly in the ISE
    if ($host.name -match "ISE") {
        Write-Warning "This command will not work properly in the PowerShell ISE"
        return
    }

    <#
     PowerShell 7.2 uses $PSStyle which overwrites the
     legacy $host.privatedata for some settings
     #>

    if ($PSStyle.Formatting) {
        $settings = "Error", "Warning", "Verbose", "Debug"
        foreach ($item in $settings) {
            $rawansi = $psstyle.Formatting.$item -replace "`e", ""
            $text = "This is a sample $($item)"
            "`e{0}{1}`e[0m" -f $rawansi, $text
        }
        $rawansi = $psstyle.progress.style -replace "`e", ""
        $text = "This is a sample Progress"
        "`e{0}{1}`e[0m" -f $rawansi, $text
    }
    else {
        $data = Get-HostPrivateData | Group-Object -Property TokenKind | Sort-Object -Property Count

        foreach ($item in $data) {
            $text = "This is a sample $($item.name)"
            $wh = @{
                Object = $text.Trim()
            }
            if ($item.count -eq 1) {
                $wh.Add("Foregroundcolor", $item.Group.Value)
            }
            else {
                $item.group | ForEach-Object -Process {
                    foreach ($setting in $_) {
                        if ($setting.value -ne -1) {
                            $wh.add($setting.setting.value, $setting.value)
                        }
                    } #foreach $setting
                }
            }
            Write-Host @wh
        } #foreach item
    }

} #close Show-HostPrivateData

Function Test-HostPrivateData {
    #results may be incomplete in PowerShell 7.2
    [CmdletBinding()]
    Param()

    $streams = "Verbose", "Warning", "Debug"
    foreach ($s in $streams) {
        $text = "I am a sample $s stream"
        $method = "Write$($s)Line"
        $host.ui.$method($text)
    }

    # Error formatting is handled differently in PowerShell 7.2
    $text = "I am a sample Error stream"
    if ($psstyle.Formatting.Error) {
        #display an ANSI formatted string
        "{0}{1}{2}" -f $psstyle.formatting.Error, $text, $psstyle.Reset
    }
    else {
        $host.ui.WriteErrorLine($text)
    }

    Read-Host "Press Enter to see a 2 second progress sample"
    $progrec = [System.Management.Automation.ProgressRecord]::new(0, "Sample Activity", "Status Description")
    $progrec.PercentComplete = 50
    $progrec.CurrentOperation = "sample current operation"
    1..2 | ForEach-Object { $host.ui.WriteProgress(100, $progrec); Start-Sleep 1 }

}
