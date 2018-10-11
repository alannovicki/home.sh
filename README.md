# home.sh
Portable shell utilities for sharing scripts and home directory configurations (e.g. aliases, gitconfig, bashrc/zshrc/etc, and so on) between computers.

### Usage
<a href="https://i.imgur.com/AvJ28lu.png"><img src="https://i.imgur.com/AvJ28lu.png" width="50%" height="50%" /></a>
<a href="https://i.imgur.com/Ihuo4I2.png"><img src="https://i.imgur.com/Ihuo4I2.png" width="50%" height="50%" /></a>
<a href="https://i.imgur.com/FEqVwph.png"><img src="https://i.imgur.com/FEqVwph.png" width="50%" height="50%" /></a>

#### Configuration
Configurations are stored in forks and copies of this repository. By storing the configuration with your own copy of the code, you can also customize the *setup* and *clean* scripts to your needs, and remotely version control your configuration.

* Directory *dotfiles/* contains files that will be **symlinked** from the user's home directory.
    * **If the file name already exists in the home directory, the original will be archived before the symlink is added**
    * It's called "**dot**files but will symlink all files. Use the same name that it should have in your user's home directory.
* Directory *exec/setup/* contains shell scripts that will be ran during the initial setup of the user. For example, you may want to set a particular shell for the user, or install packages.
    * **Execution is optional. You'll be prompted before the script is ran.**
* Directory *exec/clean* contains shell scripts that will be ran when cleaning the user's configuration off of the machine.
    * **Execution is optional. You'll be prompted before the script is ran.**

#### Running
* Git clone, or otherwise copy, your home.sh setup to the machine you want to configure
* Run **setup** (e.g. "sh setup" or "./setup") to symlink *./dotfiles/* to the home directory, and optionally execute *./exec/setup/* scripts
* Run **clean** (e.g. "sh clean" or "./clean") to delete files from the home directory that match the names of *./dotfiles/*, and optionally execute *./exec/clean/* scripts