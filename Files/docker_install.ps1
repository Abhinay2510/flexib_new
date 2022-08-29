# Filename: docker_install.ps1
#ECHO Y |Install-Module -Name DockerMsftProvider -Repository PSGallery -Force
E#CHO Y |Install-Package -Name docker -ProviderName DockerMsftProvider  
#Restart-Computer -force
# end of script
Invoke-WebRequest -UseBasicParsing "https://raw.githubusercontent.com/microsoft/Windows-Containers/Main/helpful_tools/Install-DockerCE/install-docker-ce.ps1" -o install-docker-ce.ps1
.\install-docker-ce.ps1
