Write-Host 'Question 1'Start-Job {dir c:\ -recurse –filter '*.ps1'}Write-Host 'Question 2'Invoke-Command –scriptblock {dir c:\ -recurse –filter *.ps1} –computername
(get-content computers.txt) -asjobWrite-Host 'Question 3'$Trigger=New-JobTrigger -At "6:00AM" -DaysOfWeek
"Monday","Tuesday","Wednesday","Thursday","Friday" –Weekly
$command={ Get-EventLog -LogName System -Newest 25 -EntryType Error |
Export-Clixml c:\work\25SysErr.xml}
Register-ScheduledJob -Name "Get 25 System Errors" -ScriptBlock $Command
-Trigger $Trigger
#check on what was created
Get-ScheduledJob | Select *

Write-Host 'Question 4'
Receive-Job –id 1 -keep
