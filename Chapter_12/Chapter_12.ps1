#hide the command output
mkdir C:\Labs | out-null
#import the module
import-module SMBShare
#this is a single line command
$share=New-smbshare -name 'LABS' -Path 'C:\Labs' -Description 'PowerShell
Labs' -ChangeAccess 'Everyone' -FullAccess 'Administrators' -CachingMode
Documents
#display the share object
Write-Output $share
#pipe the share object to Get-SmbShareAccess to display permissions
$share | Get-SmbShareAccess