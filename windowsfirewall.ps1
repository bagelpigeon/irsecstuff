New-NetFirewallRule -DisplayName "block-ssh" -Action Block -LocalPort 22 -Protocol TCP

New-NetFirewallRule -DisplayName "rpc block" -LocalPort 135 -Action Block

New-NetFirewallRule -DisplayName "rpc block" -LocalPort 593 -Action Block

New-NetFirewallRule -DisplayName "rdp block" -LocalPort 3389 -Action Block

New-NetFirewallRule -DisplayName "mssql" -Action Allow -Program "C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\Binn\Sqlservr.exe" -Direction Outbound

New-NetFirewallRule -DisplayName "mssql2" -Action Allow -Program "C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\Binn\Sqlservr.exe" -Direction Inbound

Disable-WindowsOptionalFeature -Online -FeatureName smb1protocol

New-NetFirewallRule -DisplayName "Calc.exe block" -Action Block -Program "%SystemRoot%\Syswow64\calc.exe"

New-NetFirewallRule -DisplayName "calc.exe block2" -Action Block -Program "%SystemRoot%\System32\calc.exe"

New-NetFirewallRule -DisplayName "notepad.exe block" -Action Block -Program "%SystemRoot%\Syswow64\notepad.exe"

New-NetFirewallRule -DisplayName "notepad.exe block2" -Action Block -Program "%SystemRoot%\System32\notepad.exe"

New-NetFirewallRule -DisplayName "Conhost.exe block" -Action Block -Program "%SystemRoot%\Syswow64\Conhost.exe"

New-NetFirewallRule -DisplayName "Conhost.exe block2" -Action Block -Program "%SystemRoot%\System32\Conhost.exe"

New-NetFirewallRule -DisplayName "mshta.exe block" -Action Block -Program "%SystemRoot%\Syswow64\mshta.exe"

New-NetFirewallRule -DisplayName "mshta.exe block2" -Action Block -Program "%SystemRoot%\System32\mshta.exe"

New-NetFirewallRule -DisplayName "Cscript.exe block" -Action Block -Program "%SystemRoot%\Syswow64\Cscript.exe"

New-NetFirewallRule -DisplayName "Cscript.exe block2" -Action Block -Program "%SystemRoot%\System32\Cscript.exe"

New-NetFirewallRule -DisplayName "Wscript.exe block" -Action Block -Program "%SystemRoot%\Syswow64\Wscript.exe"

New-NetFirewallRule -DisplayName "Wscript.exe block2"  -Action Block -Program "%SystemRoot%\System32\Wscript.exe"

New-NetFirewallRule -DisplayName "RunScriptHelper.exe block" -Action Block -Program "%SystemRoot%\Syswow64\RunScriptHelper.exe"

New-NetFirewallRule -DisplayName "RunScriptHelper.exe block2" -Action Block -Program "%SystemRoot%\System32\RunScriptHelper.exe"
