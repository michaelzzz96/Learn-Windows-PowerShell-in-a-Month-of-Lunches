Write-Host 'Question 1'
Enter-PSSession Server01
[Server01] PS C:\Users\Administrator\Documents> Notepad

Write-Host 'Question 2'
Invoke-Command -scriptblock {get-service | where {$_.status -eq "stopped"}}
-computername Server01,Server02 | format-wide -Column 4

Write-Host 'Question 3'
Invoke-Command -scriptblock {get-process | sort VM -Descending |
Select-first 10} -computername Server01,Server02

Write-Host 'Question 4'
Invoke-Command -scriptblock {get-eventlog -LogName Application -Newest 100}
-ComputerName (Get-Content computers.txt)