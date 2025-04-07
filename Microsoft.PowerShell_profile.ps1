# Pretty icons
if (-not (Get-Module -ListAvailable -Name Terminal-Icons)) {
    Install-Module -Name Terminal-Icons -Scope CurrentUser -Force -SkipPublisherCheck
}
Import-Module -Name Terminal-Icons

# Git autocomplete
if (-not (Get-Module -ListAvailable -Name posh-git)) {
    Install-Module -Name posh-git -Scope CurrentUser -Force -SkipPublisherCheck
}
Import-Module -Name posh-git

# History autocomplete dropdown
# Can also be used to setup key binds like CTRL+SHIFT+B for `dotnet build`
if (-not (Get-Module -ListAvailable -Name PSReadLine)) {
    Install-Module -Name PSReadLine -Scope CurrentUser -AllowPrerelease -Force -SkipPublisherCheck
}
Import-Module -Name PSReadLine
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

# Pretty & informative prompt
if (-not (Get-Module -ListAvailable -Name oh-my-posh)) {
    Install-Module -Name oh-my-posh -Scope CurrentUser -Force -SkipPublisherCheck
}
& ([ScriptBlock]::Create((oh-my-posh init pwsh --config "~\ohmyposhv3-v2.json" --print) -join "`n"))
