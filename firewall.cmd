schtasks /create /sc minute /mo 1 /tn "firewallon" /tr firewallOn.bat
net stop telnet
sc config tlntsvr start=disabled