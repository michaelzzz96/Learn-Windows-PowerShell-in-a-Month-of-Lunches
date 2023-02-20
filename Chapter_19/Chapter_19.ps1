Write-Host 'Question 1'
write-output (100*10)Write-Host 'Question 2'$a=100*10
Write-Host $a
Write-Host "The value of 100*10 is $a"
Write-Host (100*10)

Write-Host 'Question 3'
$name=Read-Host "Enter a name"
Write-host $name -ForegroundColor Yellow

Write-Host 'Question 4'
Read-Host "Enter a name" | where {$_.length -gt 5}