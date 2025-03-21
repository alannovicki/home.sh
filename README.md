# home.sh
Portable shell utilities for Linux dotfiles.

### Usage
#### Configuration
* Configurations are stored in forks and copies of this repository. By storing the configuration with your own copy of the code, you can also customize the *setup* and *clean* scripts to your needs, and remotely version control your configuration.
* Directory *dotfiles/* contains files that will be **symlinked** from the user's home directory.
    * **If the file name already exists in the home directory, the original will be archived before the symlink is added**
    * It's called "**dot**files" but will symlink all files. Use the same name that it should have in your user's home directory.

#### Running
* Copy (e.g. git clone) your home.sh setup to the machine you want to configure
* Run **setup** (e.g. "sh setup" or "./setup") to symlink *./dotfiles/* to the current home directory
* Run **clean** (e.g. "sh clean" or "./clean") to delete files from the current home directory that match the names of *./dotfiles/*
