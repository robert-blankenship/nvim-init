### Credits
Uses `nvim-lua` as a starting point.
https://github.com/nvim-lua/kickstart.nvim

### Introduction
Simple installation:
```
brew install nvim
mkdir -p ~/.config/nvim
cd ~/.config/nvim
curl -O https://raw.githubusercontent.com/robert-blankenship/nvim-init/master/init.lua
mkdir ftplugin
cd ftplugin
curl -O https://raw.githubusercontent.com/robert-blankenship/nvim-init/master/ftplugin/java.lua
```
You may need to open and close `nvim` a few times.


### Advanced installation (for making updates to the github repository)
```
#   Create directory `lua` in `.config/nvim/` so that you can
# easily pull new config from Git.
cd ~/.config/nvim
git clone https://github.com/robert-blankenship/nvim-init
mv nvim-init lua

# Read from Github repo.
nvim init.lua
require('init')

# Configure `jdtls`
cd ~/.config/nvim
ln -s lua/ftplugin ftplugin
``` 

Nvim setup:
```
sudo apt-get install build-essential
curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb
chsh -c /usr/bin/zsh $USER

# Install jdtls language server
curl -LO https://download.eclipse.org/jdtls/milestones/1.9.0/jdt-language-server-1.9.0-202203031534.tar.gz
# untar

sudo apt-get install openjdk-17
sudo apt-get install openjdk-17-sources
sudo apt-get install maven
```

Setting up `~/.zshrc` (only somewhat related to nvim
```
vi ~/.zshrc
export PATH=${HOME}/jdt/bin:$PATH
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64/
export XDG_CONFIG_HOME=${HOME}/.config
export XDG_CACHE_HOME=${HOME}/.cache
export XDG_DATA_HOME=${HOME}/.local/share
export XDG_STATE_HOME=${HOME}/.local/state
alias vi='nvim'
alias vim='nvim'
alias ls='ls --color=auto'
alias l='ls'
alias ll='ls -ahl'
export CLICOLOR=1
export PS1='%F{blue}%1~%f %B%#%b '
```

Typical dev environment setup (not nvim related):
```
sudo apt-get install tmux
sudo apt-get install zsh
sudo apt-get install git

git config --global credential.helper store
git config --global user.name
git config --global user.email
git config --global core.editor nvim
```

### Packages:
- `mason`, which lets you install and start Language Servers (these allow you to do things like "Go to Definition", see compilation errors, etc.)
- other packages (TODO, list out packages)

