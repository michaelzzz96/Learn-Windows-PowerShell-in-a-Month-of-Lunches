Write-Host 'Question 1'
dir c:\windows | where {$_.name -match "\d{2}"}

Write-Host 'Question 2'
Get-Process | where {$_.Company -match "microsoft"} | Select-Object -Property Id,Name,Company


Write-Host 'Question 3'
get-content .\WindowsUpdate.log | Select-string "Start[\w+\W+]+Agent:
Installing Updates"

