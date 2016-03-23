<# 
.SYNOPSIS 
    EXRM Core Script
.DESCRIPTION 
    This script handles the core details that must be handled by any EXRM script
.NOTES 
    Author     : Onorio Catenacci - catenacci@ieee.org 
.LINK 
    https://github.com/bitwalker/exrm
#>

function Test-IsAdmin(){
    $answer = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole(`
    [Security.Principal.WindowsBuiltInRole] “Administrator”)
    return $answer
}

function main(){
    $result = Test-IsAdmin
    Write-Output $result
}

main
