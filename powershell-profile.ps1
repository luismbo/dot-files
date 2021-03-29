Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Paradox

Set-PSReadLineOption -EditMode Emacs

$DefaultUser = 'luismbo'
$env:LC_ALL = 'C.UTF-8'

Import-Module DirColors

Function lbo:wide-formatted-ls { Get-ChildItem @args | Format-Wide -AutoSize }
Set-Alias ls lbo:wide-formatted-ls -option AllScope
Set-Alias l Get-ChildItem -option AllScope

Set-Location z:\siscog
$env:Path = "d:\opt\PortableGit\bin\;" + $env:Path
