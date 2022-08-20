ubuntu_machine is a repo that aims to replicate the installation of my current ubuntu-based distro.

there is a collection of useful tools for installing packages, extracting config and common files (like an edited
.bashrc and a themes directory) and backing-up directories.

# Table of Contents

* [Installation](#installation)
* [Repo Components](#repo-components)
* [Bashrc Functions](#bashrc-functions)
    * [VPN Command Configuration](#vpn-command-configuration)
* [Bashrc Environment Variables and added paths to PATH Environment Variables](#bashrc-environment-variables-and-added-paths-to-path-environment-variables)
* [Scripts](#scripts)

# Installation

It can be simply installed and used by cloning the repo

```shell
git clone https://github.com/allonios/ubuntu-machine.git
cd ubuntu_machine
```

# Repo Components

`.bash_aliases`: contains a some aliases that I find useful.

`.bashrc`: a .bashrc containing useful functions, pre-added env vars for common tools and small interface edits.

`fonts`: containing fonts that will be added to the system (current only JetBrains-Mono, more fonts can be added by the
user).

`Pycharm Settings`: contains backed-up pycharm settings

`run.sh`: runs all the scripts in the scripts directory (not recommended due to some unstable scripts).

`scripts`: contains scripts to execute certain functionalities, more [here](#scripts).

`theme.json`: a vscode theme (monokai), used for [babi](https://github.com/asottile/babi) editor.

# Bashrc Functions

the included `.bashrc` contains the following functions:

## `md` command

used to create a directory then enter that directory, basically `mkdir` and then `cd` that directory.

> **_TODO:_**
> support arguments for `mkdir` and `cd` commands.

## `transfer` command

used to upload files to [kn-transfer](https://transfer.kuwaitnet.support/)

## `venv` command

used to activate python virtual environment by providing its base directory.

not providing a directory will presume the name `.venv` as a base directory.

## `tensorflow_jupyter` command

used to run a tensorflow docker container and start a jupyter notebook.

## `tensorflow_bash` command

used to run a tensorflow docker container and attach that to bash.

## `vpn` command

used to run openvpn based on a configuration file

### VPN Command Configuration

unfortunately right now the configuration is considered to be a bit on the fixed side, but still simple enough and can
be configured using the following instructions:

1. in the cloned repo, create a folder called VPN.
2. place your vpn config file there + a text file containing username and password if it exists.
3. in the openvpn config file add the following options for password:

```shell
auth-user-pass path/to/password/text/file.
```

4. in .bashrc edit vpn function to run your password
   example:
   configuration file called vpn-x.ovpn can be added like the following

```shell
if [ $1 == "x" ] || [ $1 == "X" ];
    then
        sudo openvpn --config ~/ubuntu_machine/VPN/vpn-x.ovpn --daemon
```

running `vpn x` or `vpn X` will start the vpn file.

running `vpn st` will show the current status for the vpn (on or off).

running `vpn off` or `vpn stop` with kill the openvpn process.

## `push` command

used to run a VPN before pushing to a git remote.

configured in the same manner as `vpn` command.

> **_NOTE:_**
> the cloned repo should be in the home directory.

> **_TODO:_**
> enhance configuration process using environment variables.

# Bashrc Environment Variables and added paths to PATH Environment Variables

## Environment Variables

the following Environment Variables where added:

* `NVM_DIR`
* `PYENV_ROOT`
* `NLTK_DATA`

## added paths to PATH

the following paths where added to PATH:

* `PYENV_ROOT` (`"$HOME/.pyenv"`)
* path for anaconda3.
* path for golang.
* path for dotnet.
* path for [babi](https://github.com/asottile/babi) editor.

# Scripts

each element in the scripts directory serves a certain functionality, and will be explained briefly here.

## `Backup`:

### Prerequisites

python3

### Functionality

used to backup certain directory or directories using a configuration json file.

the specified directory will be compressed and copied to a destination directory.

#### `config.json` format

each attribute in the root object represents a directory path to backup.

this attribute (directory path) should specify an object that represents settings for the backup process.

```json
{
    "dir1/to/backup": {
        "zip_filename": "dir1.zip",
        "destination": "dist/path/",
        "skip_existing": false
    },
    "dir2/to/backup": {
        "zip_filename": "dir2.zip",
        "destination": "dist/path/",
        "skip_existing": true
    }
}
```

directory object attributes:

|Attribute| Type    |                                                                   | Description                                                                                                                                                                                                                                                                                                          |
|---|---------|-------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|`zip_filename`| strings | used to specify compressed directory filename                     |
|`destination`| string  | represents backup destination (where the zip file will be copied) |
|`skip_existing`| bool    | if true, skip the directory if it exists in the destination path  |

run `backup_from_config.py` to execute.

## `apps.sh`

### Prerequisites

snap store:

```shell
sudo apt install snapd
```

### Functionality

used to install some common apps like:

* diodon (clipboard manager).
* VLC player.
* qbittorrent.
* SSR (simplescreenrecorder).
* and few more

> **_NOTE_**:
> not recommended to blind-run, use what you need.

## `create_ssh_key.sh`

### Prerequisites

None

### Functionality

used to create ssh key using default settings.

## `db_packages.sh`

### Prerequisites

None

### Functionality

used to install some common DBMS like:

* mariadb.
* sqlite.
* postgresql.
* mongodb.

> **_NOTE_**:
> not recommended to blind-run, use what you need.

## `docker.sh`

### Prerequisites

None

### Functionality

used to install docker and docker-compose, and adds docker to a sudoer group.

## `dotnet.sh`

### Prerequisites

None

### Functionality

used to install dotnet sdk and runtime version 6.

> **_NOTE_**:
> it is recommended to check for a newer version.

## `elasticsearch.sh`

### Prerequisites

openjdk-8 (installation included)

### Functionality

used to install elasticsearch search engine version 5.

> **_NOTE_**:
> it is recommended to check for a newer version.

## `elementary_os_apps.sh`

### Prerequisites

None

### Functionality

used to install some elementary os terminal and files apps.

## `flutter.sh`

### Prerequisites

snap store:

```shell
sudo apt install snapd
```

### Functionality

used to install flutter sdk.

## `install_tensorflow_docker.sh`

### Prerequisites

* nvidia-docker2 (installation included).
* docker (installation not included, please refer to [docker](#docker.sh)).

### Functionality

used to install a docker image for tensorflow with gpu support.

## `kite_engine.sh`

### Prerequisites

None

### Functionality

used to install kite engine for code completion.

## `main_packages.sh`

### Prerequisites

python3

### Functionality

used to install main packages that every system needs, the packages are mainly aimed for python development, all puthon
packages can be found under the `python`, `pyenv` and `tkinter` sections in the script.

it has a bonus functionality that adds some useful git aliases.

## `node.sh`

### Prerequisites

nvm (installation included).

### Functionality

used to install node LTS version via nvm.

## `settings.sh`

### Prerequisites

None

### Functionality

used to apply some settings configuration after main packages installation like setting terminal font, minimize windows
on icon click and time sync with windows on dual boot systems.

## `tensorflow_cuda.sh`

### Prerequisites

None

### Functionality

used to install tensorflow with gpu support.

> **_NOTE_**:
> not recommended to use, outdated and really hard to get right, using a docker image is recommended instead.

## `tensorman.sh`

### Prerequisites

* nvidia-container-runtime (installation included).
* PopOS.

### Functionality

used to install tensorman for managing tensorflow docker images on PopOS.

## `unpack_files.sh`

### Prerequisites

None

### Functionality

used to unpack the following:

* edited .bashrc and .bash_aliases
* .themes directory.
* [babi](https://github.com/asottile/babi) editor theme.

## `windscribe.sh`

### Prerequisites

None

### Functionality

used to install windscribe vpn cli tool.

> **_NOTE_**:
> windscribe cli tool is deprecated, it is recommended to use gui instead.
