# Behind the PowerShell Pipeline
# When is an Array not an Array?

# Buy the subscription, it's worth it!

# Example 1
Function Invoke-Power {
    [CmdletBinding()]
    Param(
        [Parameter(ValueFromPipeline)]
        [int]$Value,
        [ValidateRange(2,10)]
        [int]$Power = 2
    )
    Begin {   }
    Process {
       Write-Host "Processing $Value to the power of $power" -ForegroundColor yellow
       [math]::Pow($value,$power)
    }
    end {   }
}

# Example 2
Function Invoke-Power {
    [CmdletBinding()]
    Param(
        [Parameter(ValueFromPipeline)]
        #treat $Value as an array of integers
        [int[]]$Value,
        [ValidateRange(2,10)]
        [int]$Power = 2
    )
    Begin {   }
    Process {
        #Can only raise the power of one item at a time so need to
        #iterate $Value
       foreach ($item in $value) {
           Write-Host "Processing $item to the power of $power" -ForegroundColor green
           [math]::Pow($item,$power)
       }
    }
    end {   }
}

# Example 3
Function Set-Thing {
    [CmdletBinding()]
    Param(
        [Parameter(ValueFromPipeline)]
        [object[]]$Thing
    )
    Begin {   }
    Process {
       write-host "Processing $($thing.count) things"
       #code to process $Thing
    }
    end {   }
}

# Example 4
Function Set-Thing {
    [CmdletBinding()]
    Param(
        [Parameter(ValueFromPipeline)]
        #changed to non-array
        [object]$Thing
    )
    Begin {   }
    Process {
       write-host "Processing $($thing.count) things"
       #code to process $Thing
    }
    end {   }
    
# Example 5
Function Set-Thing {
    [CmdletBinding()]
    Param(
        [Parameter(ValueFromPipeline)]
        #set a more #specific type
        [int]$Thing
    )
    Begin {   }
    Process {
       write-Host $thing.gettype().FullName
       write-host "Processing $($thing.count) things"
       #code to process $Thing
    }
    end {   }
}

# Example 6
Function Set-Thing {
    [CmdletBinding()]
    Param(
        [Parameter(ValueFromPipeline)]
        [int[]]$Thing
    )
    Begin {
        #initialize an array
        $data = @()
    }
    Process {
        #add each input to the array
        Write-Host "Adding `$Thing to array" -ForegroundColor green
        $data += $thing
    }
    End {
        write-host "Processing $($data.count) things in the END block" -ForegroundColor green
        #code to process $data
    }
}

# Example 7
Function Set-Thing {
    [CmdletBinding()]
    Param(
        [Parameter(ValueFromPipeline)]
        [int[]]$Thing
    )
    Begin {
        $data = [System.Collections.Generic.List[int]]::New()
    }
    Process {
         foreach ($item in $Thing) {
            Write-Host "Adding $item" -ForegroundColor green
            $data.Add($item)
        }
    }
    end {
        write-host "Processing $($data.count) things in the END block" -ForegroundColor Green
        #code to process $Thing
    }
}
