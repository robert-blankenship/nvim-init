### Introduction
Simple installation:
```
mkdir -p ~/.config/nvim
cd ~/.config/nvim
curl -O https://raw.githubusercontent.com/robert-blankenship/nvim-init/master/init.lua
```
You may need to open and close `nvim` a few times.


### Packages:
- `mason`, which lets you install and start Language Servers (these allow you to do things like "Go to Definition", see compilation errors, etc.)

### Developer Install
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

