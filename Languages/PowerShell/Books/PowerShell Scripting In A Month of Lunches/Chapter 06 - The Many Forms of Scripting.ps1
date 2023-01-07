# PowerShell Scripting in a Month of Lunches
# by Don Jones & Jeff Hicks

# Chapter 6: The Many Forms of Scripting (and which to use)

# This chapter deals with the concepts of Tools vs. Constroller Scripts - super-interesting stuff here!

# Example 1
Get-CustomerRecord |
Where-Object {$_LastActivity -lt (Get-Date).AddDays(-365)} |
ConvertTo-HTML |
Out-File \\intranet\www\reports\inactive-customers.html
