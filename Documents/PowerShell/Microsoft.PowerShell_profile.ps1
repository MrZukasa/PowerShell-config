#PSReadLine
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None

#Icons
Import-Module -Name Terminal-Icons

#oh-my-posh
Import-Module oh-my-posh
oh-my-posh --init --shell pwsh --config '~\user.omp.json' | Invoke-Expression

#Alias
Set-Alias ll ls
Set-Alias g git
Set-Alias cc cls

#Utilities
function which ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue | 
	Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
