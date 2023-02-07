Write-Host 'Question 1'
Get-Service | Export-Csv services.csv | Out-File
Write-Host 'Out-File : Cannot process argument because the value of argument "path" is null. Change the value of argument "path" to a 
non-null value.'

Write-Host 'Question 2'
Write-Host 'Stop-Service can accept one or more service names as parameter values for the
-Name parameter. Stop-Service -Name **'

Write-Host 'Question 3'
Write-Host 'Get-Process | Export-Csv process.csv -Delimiter `| '

Write-Host 'Question 4'
Write-Host 'Get-Process | Export-Csv process.csv -NoTypeInformation'

Write-Host 'Question 5'
get-service | Export-Csv services.csv -noclobber
get-service | Export-Csv services.csv -confirm