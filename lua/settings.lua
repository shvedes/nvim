
-------------------------------------------
-------------- Main settings --------------
-------------------------------------------

vim.g.mapleader         = " "
vim.opt.backup		    = false
vim.opt.backupcopy 	    = "yes"
vim.opt.browsedir 	    = "current"
vim.opt.bufhidden 	    = "delete"
vim.opt.buflisted 	    = false
vim.opt.clipboard 	    = "unnamedplus"
vim.opt.autowrite 	    = true
vim.opt.completeopt 	= "menu,preview"
vim.opt.confirm     	= true
vim.opt.cursorline  	= true
vim.opt.debug	    	= "throw"
vim.opt.emoji 	    	= true
vim.opt.equalalways 	= true
vim.opt.expandtab   	= true
vim.opt.fsync 	    	= true
vim.opt.hlsearch        = false
vim.opt.incsearch       = true
vim.opt.mouse           = "vn"
vim.opt.mousescroll     = "ver:6,hor:9"
vim.opt.number          = true
vim.opt.relativenumber  = true
vim.opt.numberwidth     = 2
vim.opt.shell           = "/bin/fish"
vim.opt.showtabline     = 2
vim.opt.smartcase       = true
vim.opt.smartindent     = true
vim.opt.softtabstop     = 4
vim.opt.splitright      = true
vim.opt.swapfile        = false
vim.opt.switchbuf       = "newtab"
vim.opt.syntax          = "on"
vim.opt.tabstop         = 4
vim.opt.shiftwidth      = 4
vim.opt.expandtab       = true
vim.opt.undofile        = true
vim.opt.scrolloff		= 30
vim.opt.termguicolors   = true

vim.g.loaded_netrw          = 1
vim.g.loaded_netrwPlugin    = 1
vim.opt.completeopt         = {'menu', 'menuone', 'noselect'}

vim.cmd [[autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o]]
vim.cmd.colorscheme "gruvbox"
