### Introduction
Simple installation:
```
brew install nvim
mkdir -p ~/.config/nvim
cd ~/.config/nvim
curl -O https://raw.githubusercontent.com/robert-blankenship/nvim-init/master/init.lua
```
You may need to open and close `nvim` a few times.


### Packages:
- `mason`, which lets you install and start Language Servers (these allow you to do things like "Go to Definition", see compilation errors, etc.)

### Advanced installation (for making updates to the github repository)
```
cd ~/.config/nvim
git clone https://github.com/robert-blankenship/nvim-init
mv nvim-init lua
touch init.lua

# 
nvim init.lua
require('init')
```

### Credits
Uses `nvim-lua` as a starting point.
https://github.com/nvim-lua/kickstart.nvim


Dev environment setup
```
sudo apt-get install tmux
sudo apt-get install nvim
sudo apt-get install zsh
sudo apt-get install git

mkdir -p ~/.config/nvim
cd ~/.config/nvim
git clone https://github.com/robert-blankenship/nvim-init
mv nvim-init lua
echo "require 'init'" > init.lua

vi ~/.profile
export SHELL='/usr/bin/zsh'
export XDG_CONFIG_HOME=${HOME}/.config
export XDG_CACHE_HOME=${HOME}/.cache
export XDG_DATA_HOME=${HOME}/.local/share
export XDG_STATE_HOME=${HOME}/.local/state
```
