# Filename: docker_install.ps1
Install-Module -Name DockerMsftProvider -Repository PSGallery -Force
Install-Package -Name docker -ProviderName DockerMsftProvider  
Restart-Computer -force
# end of script

