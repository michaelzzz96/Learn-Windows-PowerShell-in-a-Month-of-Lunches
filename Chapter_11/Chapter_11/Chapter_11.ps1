Write-Host 'Question 1'
import-module NetAdapter
get-netadapter -physical

Write-Host 'Question 2'
Import-Module DnsClient
Get-DnsClientCache -type AAAA,A

Write-Host 'Question 3'
Get-Hotfix -Description 'Security Update'Write-Host 'Question 4'No. The object that Get-Service uses doesnt have that information. Write-Host 'Question 5'get-hotfix -Description Update | where {$_.InstalledBy -match
"administrator"}

Write-Host 'Question 6'
get-process -name svchost,conhost