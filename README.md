###### *Remember to install [Laragon](https://github.com/leokhoa/laragon) and add in the $PATH all the directories of the dependencies that we need to use in our workflow!!* 

# PowerShell Oh-my-posh setup 🍻
First of all, we need to use a more clear and readable font just like Nerd Font [Hack](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip) just download it form the [repository](https://github.com/ryanoasis/nerd-fonts) of [Ryan l Mclntyre](https://github.com/ryanoasis)😎

In order to have a more faster command line and a more felxible tools, we need to install also the [Windows Terminal](https://github.com/microsoft/terminal) which can be downloaded also from the Microsoft Store

## Configure the Terminal 🧾
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

1. In the JSON search for the '_One Half Dark_' theme that we just set before and duplicate it, change the name of the duplicated one by adding _'(modded)'_ then set this background: _#001B26_ then save it and load in the Appearance menù the new modded theme.  
![modded](https://i.ibb.co/HK78bRs/Cattura.png)

8. Install [Neovim](https://github.com/neovim/neovim/wiki/Installing-Neovim) and add it to the $PATH

## Make a user profile and set command aliases 🐱‍💻
In order to open our shell with all the aliases an the stuff that we need to load each time, we need to make sure that all this command are written in the `$PROFILE.CurrentUserCurentHost` file, which is [this](https://github.com/MrZukasa/PowerShell-config/blob/main/Documents/PowerShell/Microsoft.PowerShell_profile.ps1) file.

Another thing to do is to set all the git aliases that we need to make our workflow more light, all those aliases should be placed in our [.gitconfig](https://github.com/MrZukasa/PowerShell-config/blob/main/.gitconfig) file in the `~` folder.

In this file we can place also the core editor that git must use.

In case someone need it here is the command to add VSCode as editor:
```PowerShell
git config --global core.editor "code --wait"
```
In the latest version of [git 2.14.2](https://git-scm.com/) it comes bundled with [tig](https://jonas.github.io/tig/INSTALL.html)
In order to run it siply type `tig` in the repository folder.

## Install all Dependencies that we miss 😊
1. **_Install [Oh-My-Posh](https://github.com/JanDeDobbeleer/oh-my-posh)_**
   ```PowerShell
   Install-Module posh-git -SCope CurrentUser -Force
   Install-Module oh-my-posh -Scope CurrentUser -Force
   ```
   *Then open a new shell instance*
   ```PowerShell
   Import-Module posh-git
   Import-Moule oh-my-posh
   Set-PoshPrompt Paradox
   ```
   Once that we installed oh-my-posh, we can fully customize it as we want.
   I've allready made a file with all my needed customization and we just need to copy that file in our `.\config\powershell` folder.
   The [file](https://github.com/MrZukasa/PowerShell-config/blob/main/.config/powershell/user.omp.json) must be called `[username].omp.json`

2. ***Install [Terminal-Icons](https://github.com/devblackops/Terminal-Icons)***
   ```PowerShell
   Install-Module -Name Terminal-Icons -Repository PSGallery -Force
   Import-Module Terminal-Icons
   ```

3. ***Install [Z](https://github.com/rupa/z)***
   ```PowerShell
   Install-Module -Name z -Force
   ```

4. ***Install [PSReadLine](https://github.com/PowerShell/PSReadLine)***
   ```PowerShell
   Install-Module -Name PSReadLine -AllowPrerelease -Scope CurrentUser -Force -SkipPublisherCheck
   ```
   _reboot terminal_
   ```PowerShell
   Set-PSReadLineOption -PredictionSource History
   Set-PSReadLineOption -PredictionViewStyle ListView
   ```

5. ***Install [Commitizen](https:/m/github.com/commitizen/cz-cli)***
   ```PowerShell
   npm install -g commitizen
   ```
   To [use](https://youtu.be/qKpY7t5m35k?t=617) it just go for `git cz` 🎇 

6. ***Install [Hub Browse](https://github.com/github/hub)***
   ```PowerShell
   choco install hub
   ```
   The token that we use as password for hub, can be generated from [here](https://github.com/settings/tokens)

7. ***Install [Sudo](https://community.chocolatey.org/packages/Sudo)***
   ```PowerShell
   choco install sudo
   ```

8. Another good tool is the utility `which` that allow the user to find the path of a specified file. This script is allready available in the file, but in case you need it, here it is
   ```PowerShell
   function which ($command){
      Get-Command --Name $command -ErrorAction SilentlyContinue | Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
   }
   ```
<hr>

#### Last but not least is my thanks to [Takuya](https://github.com/craftzdog?tab=repositories) for giving me [inspiration](https://youtu.be/5-aK2_WwrmM) for this small documentation.🐕‍🦺🛠️