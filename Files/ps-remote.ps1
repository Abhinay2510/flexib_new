powershell.exe -File C:\Users\Administrator\Desktop\ansible.ps1
Enable-PSRemoting -Force
Set-Item wsman:\localhost\client\trustedhosts * -Confirm:$False -Force
Restart-Service WinRM
$username = "Administrator"
$password = ConvertTo-SecureString -String "&$sWcT-.EMIqC!UkL8HBtijk5w=CfF(N" -AsPlainText -Force
$cred = new-object -typename System.Management.Automation.PSCredential -argumentlist $username, $password 
$session= New-PSSession  -ComputerName 172.31.9.229 -Credential $cred
Get-PSSession 
Copy-Item -Path C:\Users\Administrator\reports\* -ToSession $session -Destination 'C:\Users\Administrator\Documents'
