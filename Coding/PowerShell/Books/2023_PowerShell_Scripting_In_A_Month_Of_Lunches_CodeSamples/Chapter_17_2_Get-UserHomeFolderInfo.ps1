function Get-UserHomeFolderInfo {
    [CmdletBinding()]
    Param(
        [Parameter(Mandatory)]
        [string]$HomeRootPath
    )

    BEGIN {}

    PROCESS {

        Write-Verbose "Enumerating $HomeRootPath"
        $params = @{'Path' = $HomeRootPath
            'Directory'    = $true 
        }

        ForEach ($folder in (Get-ChildItem @params)) {
    
            Write-Verbose "Checking $($folder.name)"
            $params = @{'Identity' = $folder.Name
                'ErrorAction'      = 'SilentlyContinue'
            }
            $user = Get-ADUser @params

            if ($user) {

                Write-Verbose " + User exists"
                $result = Get-FolderSize -Path $folder.FullName
                [PSCustomObject]@{
                    'User'   = $folder.Name
                    'Path'   = $folder.FullName
                    'Files'  = $result.Files
                    'Bytes'  = $result.Bytes
                    'Status' = 'OK'
                }
            }
            else {
                
                Write-Verbose " - User does not exist"
                [PSCustomObject]@{
                    'Path'   = $folder.FullName
                    'Files'  = 0
                    'Bytes'  = 0
                    'Status' = "Orphan"
                }

            } # If user exists
        } # ForEach  
    } # Process

    END {}

} # Function