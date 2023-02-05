Write-Host 'Question 1'
Get-Process

Write-Host 'Question 2'
Get-EventLog -Newest 100 -LogName Application

Write-Host 'Question 3'
Get-Command -CommandType Cmdlet

Write-Host 'Question 4'
Get-Alias

Write-Host 'Question 5'
New-Alias -Name note -Value Get-ChildItem

Write-Host 'Question 6'
Get-Service -Name M*

Write-Host 'Question 7'
Get-Help *firewall*
Write-Host 'Using Get-Help to find the to discover the necessary cmdlet'
Get-NetFirewallRule
Write-Host 'Question 8'
Get-Help Get-NetFirewallRule -Detailed
Write-Host 'Or'
Get-NetFirewallRule -Direction Inbound
