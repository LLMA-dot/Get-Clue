# PowerShell Scripting in a Month of Lunches
# by Don Jones & Jeff Hicks

# Chapter 6: The Many Forms of Scripting (and which to use)

# This chapter deals with the concepts of Tools vs. Constroller Scripts - super-interesting stuff here!

# Example 1 - not actual code
Get-CustomerRecord |
Where-Object {$_LastActivity -lt (Get-Date).AddDays(-365)} |
ConvertTo-HTML |
Out-File \\intranet\www\reports\inactive-customers.html

# Example 2 - not actual code
Get-EnabledNonExpiringUser | 
Add-ExpiryDataToUser |
Where-Object {$_.DaystoExpire -lt 2} |
Send-PasswordExpiryMessageToUser |
Export-CSV report.csv

# Example 3 - not actual code
# Get-ComplianceInfo.ps1
Get-ADComputer -filter * | foreach {
	if (Test-Connection $_.name -quiet) {
		msinfo32 /computer "\\$($_.name)" /report "C:\work\$($_.name)-msinfo.txt"
	}
	else {
		$_.name | out-file C:\logs\offline.txt -Append
	}
}
