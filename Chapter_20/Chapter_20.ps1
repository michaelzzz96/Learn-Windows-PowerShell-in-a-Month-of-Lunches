﻿Write-Host 'Question 1'
get-pssession | Remove-PSSession
Get-Process
Exit

Write-Host 'Question 4'
invoke-command -ScriptBlock { get-service } -Session $session
-Session (Get-PSSession)

Write-Host 'Question 6'
Invoke-Command -ScriptBlock {Import-Module ServerManager} -Session $session