Write-Host 'Question 1'
Get-WmiObject Win32_LogicalDisk -comp $env:computername -filter "drivetype=3" |
Where { ($_.FreeSpace / $_.Size) -lt .1 } |
Select -Property DeviceID,FreeSpace,Size