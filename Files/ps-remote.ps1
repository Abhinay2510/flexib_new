powershell.exe -File C:\Users\Administrator\Desktop\ansible.ps1
Enable-PSRemoting -Force
Set-Item wsman:\localhost\client\trustedhosts * -Confirm:$False -Force
Restart-Service WinRM
$username = "Administrator"
$password = ConvertTo-SecureString -String ";9yFGnsXC)b;ak9Q6QlTJ?Rjy;v=H@fW" -AsPlainText -Force
$cred = new-object -typename System.Management.Automation.PSCredential -argumentlist $username, $password 
$session= New-PSSession  -ComputerName 172.31.34.227 -Credential $cred
Get-PSSession 
Copy-Item -Path C:\Users\Administrator\Downloads\result.html\* -ToSession $session -Destination 'C:\Users\Administrator\reports'
