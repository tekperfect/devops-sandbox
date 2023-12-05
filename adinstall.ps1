# This will prep the server for AD install

# This gets the windows features that are available
get-windowsfeature

# This install ad domain services
install-windowsfeature AD-Domain-Services

# This install AD with the specified paramaters
" -DomainNetbiosName "Server" -ForestMode "Win2012R2" -InstallDns:$true -LogPath "C:\Windows\NTDS" -NoRebootOnCompletion:$false -SysvolPath "C:\Windows\SYSVOL" -Force:$true -SafeModeAdministratorPassword (ConvertTo-SecureString -String <password> -AsPlainText -Force)
