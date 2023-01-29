function Get-MachineInfo {
	Param(
		[string[]]$ComputerName,
		[string]$LogFailuresToPath,
		[string]$Protocol = "Wsman",
		[switch]$ProtocolFallback
		)
		
		foreach ($computer in $computername){
		
			#Establish Session Protocol
			if ($protocol -eq 'Dcom') {
				$option = New-CimSessionOption -Protocol Dcom
			} else {
				$option = New-CimSessionOption -Protocol Wsman
			}
		
			# Connect Session
			$session = New-CimSession -ComputerName $computer -SessionOption $option
			
			# Query data
			$os = Get-CimInstance -ClassName Win32_OperatingSystem -CimSession $session
			
			# Close session
			$session | Remove-CimSession
			
			# Output data
			# TODO
		
		} #foreach
} #function
