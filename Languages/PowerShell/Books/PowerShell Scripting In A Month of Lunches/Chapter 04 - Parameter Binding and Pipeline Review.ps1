# PowerShell Scripting in a Month of Lunches
# by Don Jones & Jeff Hicks

# Chapter 4 Review: Parameter Binding and the PowerShell Pipeline

### Command
Get-Service | Where Status -EQ "Running" | ConvertTo-Html | Out-File stats.htm

### Command with all parameters
Get-Service | `
Where Status -eq -Value "Running" |`
ConvertTo-HTML |`
Out-File -Path C:\Temp\Stats.htm

### 4.3.2 Tracing ByValue Parameter Binding
trace-command -Expression {Get-Process | ConvertTo-Html | Out-Null} -Name ParameterBinding -PSHost

### 4.4. ByPropertyName
Trace-Command -Expression {Get-Process | Stop-Service -Whatif} -Name ParameterBinding -PSHost

### 4.4.1. Let's trace ByProperty Name
Trace-Command -Expression {Get-Process -Name o* | Stop-Job} -PSHost -Name ParameterBinding
Footer
© 2023 GitHub, Inc.
Footer navigation
Terms
Privacy
Security
Status
Docs
Contact GitHub
Pricing
API
Training
Blog
About
