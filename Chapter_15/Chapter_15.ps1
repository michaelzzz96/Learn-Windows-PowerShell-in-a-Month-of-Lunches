﻿Write-Host 'Question 1'
(get-content computers.txt) -asjob
"Monday","Tuesday","Wednesday","Thursday","Friday" –Weekly
$command={ Get-EventLog -LogName System -Newest 25 -EntryType Error |
Export-Clixml c:\work\25SysErr.xml}
Register-ScheduledJob -Name "Get 25 System Errors" -ScriptBlock $Command
-Trigger $Trigger
#check on what was created
Get-ScheduledJob | Select *

Write-Host 'Question 4'
Receive-Job –id 1 -keep