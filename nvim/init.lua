-- sudo apt install wl-clipboard - will make it such that you can perform "+y to yank from Neovim to your system clipboard and "+p to paste from your system clipboa    rd into Neovim. Pretty useful when you need to copy and paste code snippets.
-- To create our config file, we need to first get to the proper directory. In a terminal, execute
-- cd ~/.config
-- mkdir nvim
-- cd nvim
-- nvim init.lua

local set = vim.opt

vim.wo.number=true
set.backspace='2'
set.showcmd=true
set.laststatus=2  
set.autowrite=true

set.tabstop=2   
set.shiftwidth=2   
set.shiftround=true
set.expandtab=true

