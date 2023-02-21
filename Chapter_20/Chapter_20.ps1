Write-Host 'Question 1'
get-pssession | Remove-PSSessionWrite-Host 'Question 2'$session=new-pssession –computername localhostWrite-Host 'Question 3'enter-pssession $session
Get-Process
Exit

Write-Host 'Question 4'
invoke-command -ScriptBlock { get-service } -Session $sessionWrite-Host 'Question 5'Invoke-Command -ScriptBlock {get-eventlog -LogName System -Newest 20}
-Session (Get-PSSession)

Write-Host 'Question 6'
Invoke-Command -ScriptBlock {Import-Module ServerManager} -Session $sessionWrite-Host 'Question 7'Import-PSSession -Session $session -Prefix rem -Module ServerManagerWrite-Host 'Question 8'Get-RemWindowsFeatureWrite-Host 'Question 9'Remove-PSSession -Session $session