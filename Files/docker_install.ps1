# Filename: docker_install.ps1
Install-Module -Name DockerMsftProvider -Repository PSGallery -Confirm:$False
Install-Package -Name docker -ProviderName DockerMsftProvider  -Confirm:$False
Restart-Computer -force
# end of script

