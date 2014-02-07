#Clear any modifications to default values

#Set-Execution Policy
if($(Get-ExecutionPolicy) -ne "Unrestricted" ){
    Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force
}

#Download and install missing modules
# (new-object Net.WebClient).DownloadString("http://psget.net/GetPsGet.ps1") | iex

#Modules

#Aliases

#Functions

<#
function prompt {
	if($pwd -eq ~){
	}else if($pwd -eq $(split-path -Parent $pwd)){
	}else{
		$currentDir = $(split-path -Leaf $pwd)
	}
	$( $(whoami) + '@' + [Environment]::MachineName +':' + $currentDir + '$ ' )
}
#>

#Prompt
function prompt 
{
	#if(currentCredentials == Admin){
    #    write $( )
    #}
    write $( '[' + $(Get-Date -Format "yyyy.MM.dd@HH:mm:ss") + '][' + $([Environment]::UserDomainName + '\' + [Environment]::UserName + '@' + $([Environment]::MachineName) +']::[' + $(pwd) + ']' + [Environment]::NewLine + $( write '$> ' ) ) )
}

#Default Directory
Set-Location C:\code