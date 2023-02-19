Write-Host 'Question 1'
invoke-command {get-wmiobject win32_bios} -comp localhost,$env:computername
–asjob

Write-Host 'Question 2'
$results=Receive-Job 4 –keepWrite-Host 'Question 3'$resultsWrite-Host 'Question 4'$results | export-clixml bios.xml