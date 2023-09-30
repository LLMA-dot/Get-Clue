# This chapter handles Error Handling. 

PROCESS {
    ForEach ($Computer in $ComputerName) {
	
        if ($protocol -eq 'Dcom') {
            $option = New-CimSessionOption -Protocol Dcom
        }
        else {
            $option = New-CimSessionOption -Protocol Wsman
        }
	
        try {
            Write-Verbose "Connecting to $computer over $protocol"
            $params = @{
                'Computername'  = $Computer
                'SessionOption' = $option
                'ErrorAction'   = 'Stop'
            }
            $session = New-CimSession @params
		
            Write-Verbose "Querying from $computer"
            $os_params = @{
                'ClassName'  = 'Win32_OperatingSystem'
                'CimSession' = $session
            }
            $os = Get-CimInstance @os_params
		
            $cs_params = @{
                'ClassName'  = 'Win32_ComputerSystem'
                'CimSession' = $session
            }
            $cs = Get-CimInstance @cs_params
		
            $sysdrive = $os.SystemDrive
            $drive_params = @{
                'ClassName'  = 'Win32_LogicalDisk'
                'Filter'     = "DeviceId='$sysdrive'"
                'CimSession' = $session
            }
            $drive = Get-CimInstance @drive_params
		
            $proc_params = @{
                'ClassName'  = 'Win32_Processor'
                'CimSession' = $session
            }
            $proc = Get-CimInstance @proc_params | Select-Object -first 1
		
            Write-Verbose "Closing session to $computer"
            $session | Remove-CimSession
	 
            Write-Verbose "Outputting for $computer"
            $obj = [pscustomobnject]@{
                'ComputerName'      = $Computer
                'OSVersion'         = $os.version
                'SPVersion'         = $os.servicepackmajorversion
                'OSBuild'           = $os.buildnumber
                'Manufacturer'      = $cs.manufacturer
                'Model'             = $cs.model
                'Procs'             = $cs.numberofprocessors
                'RAM'               = ($cs.totalphysicalmemoery / 1GB)
                'Arch'              = $proc.addresswidth
                'SysDriveFreeSpace' = $drive.freespace
            }
            Write-Object $obj
        }
        Catch {
            Write-Warning "FAILED $Computer on $protocol"
            
            # Did we specificy protocol fallback=
            # If so, try again. If we specified logging, 
            # we won't log a problem here - we'll let the
            # logging occur if this fallback also fails
                
            If ($ProtocolFallback) {
                If ($Protocol -eq 'Dcom') {
                    $newProtocol = 'Wsman'
                }
                else {
                    $newProtocol = 'Dcom'
                } # If Protocol
    
                Write-Verbose "Trying again with $newProtocol"
                $params = @{'ComputerName' = $Computer
                    'Protocol'             = $newProtocol
                    'ProtocolFallback'     = $false
                }
    
                If ($PSBoundParameters.ContainsKey('LogFailuresToPath')) {
                    $params += @{'LogFailuresToPath' = $LogFailuresToPath }
                } #if Logging
    
                Get-MachineInfo @params
            } # IF ProtocolFallback
    
            # If we didn't specify fallback, but we did specify logging,
            # then log the error, because we won't be trying again
    
            If (-not $ProtocolFallback -and $PSBoundParameters.ContainsKey('LogFailuresToPath')) {
                Write-Verbose "Logging to $LogFailuresToPath"
                $computer | Out-File $LogFailuresToPath -Append
            } # IF Write to Log
            
        } # try / catch
	
    } # foreach

} # Process