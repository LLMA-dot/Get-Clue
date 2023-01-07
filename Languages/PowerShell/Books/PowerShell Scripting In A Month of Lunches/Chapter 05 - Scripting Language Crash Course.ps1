# PowerShell Scripting in a Month of Lunches
# by Don Jones & Jeff Hicks

# Chapter 5: Scripting Language Crash Course

# The IF Construct
If (expression>) {
	#code
} ElseIf (<expression>) {
	#code
} ElseIf (<expression>) {
	#code
} Else {
	#code
}

# Note: An expression is any PowerShell expression that will result in either $true of $false.

# The Switch Construct
switch (:principal:) {
	:candidate: {script block}
	:candidate: {script block}
	:candidate: {script block}
default {script block {
}

# The Do-While Construct / Part 1
While ( :condition:) {
#code
}

# The Do-While Construct / Part 2
Do {
#code
} while (:condition:)

# ForEach Example
ForEach ($comp in $computers) {
	If (-not (Test-Ping $comp -quiet)) {
	Break
	}
}
