$thisDirectory = (Split-Path -parent $MyInvocation.MyCommand.Definition)

Get-Item $thisDirectory\src\*.ps1 |
    ForEach-Object {
	  . $_.FullName;
    }

Export-ModuleMember -Function Import-SkolniLoginStudents
Export-ModuleMember -Function Import-SkolniLoginUsers
Export-ModuleMember -Function New-SkolniLoginHomeDrive
Export-ModuleMember -Function Set-SkolniLoginClassToDisplayName