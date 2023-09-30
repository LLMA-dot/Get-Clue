# Example of controller script

Get-EnabledNonExpiringUser |
Add-ExpiryDateToUser |
Where-Object { $_.DaysToExpire -lt 2} |
Send-PasswordExpiryMessageToUsers |
Tee-Object -FilePath notificationLog.txt |
Format-Table -AutoSize

