Write-Output 'Question 1'
Update-Help -Force

Write-Output 'Question 2'
Help *html*

Write-Output 'Question 3'
Get-Command -Noun file, Printer

Write-Output 'Question 4'
Help *Process*

Write-Output 'Question 5'
Get-Command -Verb write -Noun EventLog

Write-Output 'Question 6'
Get-Command -Noun alias

Write-Output 'Question 7'
Help *transcript*

Write-Output 'Question 8'
help Get-EventLog -Parameter Newest

Write-Output 'Question 9'
Help Get-Service -Parameter computername

Write-Output 'Question 10'
Help Get-Process -Parameter computername

Write-Output 'Question 11'
Help Out-File –Parameter Width

Write-Output 'Question 12'
Help Out-File -Full

Write-Output 'Question 13'
Get-Alias

Write-Output 'Question 14'
Get-Help ps
ps -c Server1

Write-Output 'Question 15'
get-help *object*

Write-Output 'Question 16'
get-help *array*