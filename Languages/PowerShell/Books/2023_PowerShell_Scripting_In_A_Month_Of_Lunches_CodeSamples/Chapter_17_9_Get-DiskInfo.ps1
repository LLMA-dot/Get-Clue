# Gets all domain controllers and reads the physical memory.

function Get-DiskInfo {
    foreach ($domain in (Get-ADForest).domains) {
        $hosts = Get-ADDomainController -filter * -server $domain |
        Sort-Object -Prop Hostname

        ForEach ($host in $hosts) {
            $cs = Get-CimInstance -ClassName Win32_ComputerSystem -ComputerName $host
            $props = @{'Computername'     = $host
                'DomainController'        = $host
                'Manufacturer'            = $cs.Manufacturer
                'Model'                   = $cs.Model
                'TotalPhysicalMemory(GB)' = $cs.TotalPhysicalMemory / 1GB
            }

            New-Object -Type psobject -Prop $props
        
        } #ForEach $host

    } #ForEach $domain
    
} #Function