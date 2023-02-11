get-module *trouble* -list
import-module TroubleShootingPack
get-command -Module TroubleShootingPack
help get-troubleshootingpack –full
help Invoke-TroubleshootingPack -full
dir C:\windows\diagnostics\system
$pack=get-troubleshootingpack C:\windows\diagnostics\system\Networking
Invoke-TroubleshootingPack $pack