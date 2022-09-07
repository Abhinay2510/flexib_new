powershell
Enable-PSRemoting -Force
Set-Item wsman:\localhost\client\trustedhosts * -Confirm:$False -Force
Restart-Service WinRM
$username = "Administrator"
$password = ConvertTo-SecureString -String "WxRuwbjSU.%vp6lLL0J6ENcQL(s7p.Bo" -AsPlainText -Force
$cred = new-object -typename System.Management.Automation.PSCredential -argumentlist $username, $password 
$session= New-PSSession  -ComputerName 172.31.33.86 -Credential $cred
Get-PSSession 
Copy-Item -Path "C:\Users\Administrator\testfile\*" -Destination "C:\Users\Administrator\Downloads" -ToSession $session
