#PSReadLine
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -EditMode Emacs
Set-PSReadLineOption -BellStyle None

#Icons
Import-Module -Name Terminal-Icons

#oh-my-posh
#Import-Module oh-my-posh this is not needed anymore in version 2
#oh-my-posh --init --shell pwsh --config 'C:\Users\frabo\.config\powershell\frabo.omp.json' | Invoke-Expression
#oh-my-posh prompt init pwsh --config C:\Users\frabo\AppData\Local\oh-my-posh\themes/negligible.omp.json | Invoke-Expression
#oh-my-posh prompt init pwsh --config C:\Users\frabo\AppData\Local\oh-my-posh\themes/peru.omp.json | Invoke-Expression
#oh-my-posh prompt init pwsh --config C:\Users\frabo\AppData\Local\oh-my-posh\themes/wopian.omp.json | Invoke-Expression
#oh-my-posh prompt init pwsh --config C:\Users\frabo\AppData\Local\oh-my-posh\themes/di4am0nd.omp.json | Invoke-Expression
oh-my-posh prompt init pwsh --config C:\Users\frabo\AppData\Local\oh-my-posh\themes/di4am0nd-modded.omp.json | Invoke-Expression




#Alias
Set-Alias ll ls
Set-Alias g git
Set-Alias cc cls

#Utilities
function which ($command) {
	Get-Command -Name $command -ErrorAction SilentlyContinue | 
	Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
