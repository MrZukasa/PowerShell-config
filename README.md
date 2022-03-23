### Install [Terminal-Icons](https://github.com/devblackops/Terminal-Icons)
```
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
Import-Module Terminal-Icons
```

### Install [Z](https://github.com/rupa/z)
```
Install-Module -Name z -Force
```

### Install [PSReadLine](https://github.com/PowerShell/PSReadLine)
```
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
```
_reboot terminal_
```
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
```

### Install [Commitizen](https://github.com/commitizen/cz-cli)
```
npm install -g commitizen
```

### Install [Hub Browse](https://github.com/github/hub)
```
choco install hub
```
The token that we use as password can be generated from [here](https://github.com/settings/tokens)

### Install [Sudo](https://community.chocolatey.org/packages/Sudo)
```
choco install sudo
```