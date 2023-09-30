function Get-FolderSize {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory = $true,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true)]
        [string[]]$Path
    )

    Begin {}

    Process {

        ForEach ($folder in $path) {

            Write-Verbose "Checking $folder"
            if (Test-Path -Path $folder) {
                Write-Verbose " + Patch exists"
                $params = @{'Path' = $folder
                    'Recurse'      = $true
                    'File'         = $true
                }

                $measure = Get-ChildItem @params | Measure-Object -Property Length -Sum
                [PSCustomObject]@{
                    'Path'  = $folder
                    'Files' = $measure.Count
                    'Bytes' = $measure.Sum
                }

            }
            else {
                Write-Verbose " - Path does not exist"
                [PSCustomObject]@{
                    'Files' = 0
                    'Bytes' = 0
                } 
            } # if folder exists 
        } # foreach
    } # PROCESS

    End {}

} # function