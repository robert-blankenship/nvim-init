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
sudo apt-get install zsh
sudo apt-get install git

sudo apt-get install build-essential
curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb

git config --global credential.helper store
git config --global user.name
git config --global user.email
git config --global core.editor nvim

chsh -c /usr/bin/zsh $USER

vi ~/.profile
export XDG_CONFIG_HOME=${HOME}/.config
export XDG_CACHE_HOME=${HOME}/.cache
export XDG_DATA_HOME=${HOME}/.local/share
export XDG_STATE_HOME=${HOME}/.local/state


vi ~/.zshrc
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64/

sudo apt-get install default-jdk
sudo apt-get install maven

```


- Change Java indentation to 4

Config `jdtls`
```
local config = {
    cmd = {'/home/robert/jdt/bin/jdtls'},
	    root_dir = vim.fs.dirname(vim.fs.find({'.gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)
``` 
