#####  <span style="color:#e88e91; font-style:italic"> Remember to install [Laragon](https://github.com/leokhoa/laragon) and add in the $PATH all the directories of the dependencies that we need to use in our workflow!! </span> 

# PowerShell Oh-my-posh setup 🍻

First of all, we need to use a more clear and readable font just like Nerd Font [Hack](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip) just download it form the [repository](https://github.com/ryanoasis/nerd-fonts) of [Ryan l Mclntyre](https://github.com/ryanoasis)😎

In order to have a more faster command line and a more felxible tools, we need to install also the [Windows Terminal](https://github.com/microsoft/terminal) which can be downloaded also from the Microsoft Store

#### <span style="color: #8ee075">Configure the Terminal 🧾</span>
1. First thing to do is to set the 'acrylic' of the terminal to ON
![Acrylic](https://i.ibb.co/412Dkhc/Capture.png)

2. Then we can set the Apperance as Color Scheme and Font Face
![Appearance](https://i.ibb.co/mCNM4Sc/Capture.png)

3. Now it is time for the Acrylic opacity  
![Opacity](https://i.ibb.co/Wgd1pW9/Capture.png)

4. We want to use our best bash command line in our windows terminal, so we need to install [PowerShell](https://github.com/PowerShell/PowerShell/releases/tag/v7.2.2). We can also install it from the Windows Store.

5. Now set it as default profile in the terminal just like so:  
![Default](https://i.ibb.co/ggnmG95/Cattura.png)

6. Now we want to import some changes in our environment setting.json, and to do that we simply click on the _'gear'_ in the bottom left corner of the settings menù  
![gear](https://i.ibb.co/hgDLdvx/Cattura.png)

7. In the JSON search for the '_One Half Dark_' theme that we just set before and duplicate it, change the name of the duplicated one by adding _'(modded)'_ then set this background: <span style='color:#32525e'>_#001B26_</span> then save it and load in the Appearance menù the new modded theme.  
![modded](https://i.ibb.co/HK78bRs/Cattura.png)

8. Install [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) and add it to the $PATH

#### <span style="color:#75b2e0">Make a user profile and set command aliases </span> 🐱‍💻
In order to open our shell with all the aliases an the stuff that we need to load each time, we need to make sure that all this command are written in the `$PROFILE.CurrentUserCurentHost` file, which is [this](https://github.com/MrZukasa/PowerShell-config/blob/main/Documents/PowerShell/Microsoft.PowerShell_profile.ps1) file

#### <span style="color:#c2e075">Install all Dependencies that we miss 😊</span>
1. **_Install [Oh-My-Posh](https://github.com/JanDeDobbeleer/oh-my-posh)_**
   ```
   Install-Module posh-git -SCope CurrentUser -Force
   Install-Module oh-my-posh -Scope CurrentUser -Force
   ```
   Then open a new shell instance
   ```
   Import-Module posh-git
   Import-Moule oh-my-posh
   Set-PoshPrompt Paradox
   ```
   Once that we installed oh-my-posh, we can fully customize it as we want

<hr/>
##### Install [Terminal-Icons](https://github.com/devblackops/Terminal-Icons)
```
Install-Module -Name Terminal-Icons -Repository PSGallery -Force
Import-Module Terminal-Icons
```

##### Install [Z](https://github.com/rupa/z)
```
Install-Module -Name z -Force
```

##### Install [PSReadLine](https://github.com/PowerShell/PSReadLine)
```
Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
```
_reboot terminal_
```
Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
```

##### Install [Commitizen](https://github.com/commitizen/cz-cli)
```
npm install -g commitizen
```

##### Install [Hub Browse](https://github.com/github/hub)
```
choco install hub
```
The token that we use as password can be generated from [here](https://github.com/settings/tokens)

##### Install [Sudo](https://community.chocolatey.org/packages/Sudo)
```
choco install sudo
```