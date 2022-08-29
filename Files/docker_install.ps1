# Filename: docker_install.ps1
ECHO Y |Install-Module -Name DockerMsftProvider -Repository PSGallery -Force
ECHO Y |Install-Package -Name docker -ProviderName DockerMsftProvider  
Restart-Computer -force
# end of script

