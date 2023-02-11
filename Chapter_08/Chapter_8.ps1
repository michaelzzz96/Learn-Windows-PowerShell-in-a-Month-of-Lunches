Write-Host 'Question 1'
Get-Random

Write-Host 'Question 2'
Get-DateWrite-Host 'Question 3'
get-date | Get-MemberWrite-Host 'Question 4'
get-date | Select-Object -Property DayOfWeek

Write-Host 'Question 5'
Get-HotfixWrite-Host 'Question 6'Get-HotFix | Sort InstalledOn | Select InstalledOn,InstalledBy,HotFixIDWrite-Host 'Question 7'Get-HotFix | Sort Description | Select
Description,InstalledOn,InstalledBy,HotFixID | ConvertTo-Html -Title
"HotFix Report" | Out-File HotFixReport.htm
Write-Host 'Question 8'Get-EventLog -LogName System -Newest 50 | Sort TimeGenerated,Index | Select
Index,TimeGenerated,Source | Out-File elogs.txt



