﻿Write-Host 'Question 1'
import-module NetAdapter
get-netadapter -physical

Write-Host 'Question 2'
Import-Module DnsClient
Get-DnsClientCache -type AAAA,A

Write-Host 'Question 3'
Get-Hotfix -Description 'Security Update'
"administrator"}

Write-Host 'Question 6'
get-process -name svchost,conhost