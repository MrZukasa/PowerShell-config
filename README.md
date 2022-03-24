#PowerShell Oh-my-posh setup
First of all, we need to use a more clear and readable font just like Nerd Font [Hack](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip) just download it form the [repository](https://github.com/ryanoasis/nerd-fonts) of [Ryan l Mclntyre](https://github.com/ryanoasis)😎

In order to have a more faster command line and a more felxible tools, we need to install also the [Windows Terminal](https://github.com/microsoft/terminal) which can be downloaded also from the Microsoft Store

##### Configure the Terminal
First thing to do is to set the 'acrylic' of the terminal to ON
![Acrylic](https://i.ibb.co/412Dkhc/Capture.png)

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