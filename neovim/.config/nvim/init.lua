-- Basic Settings
vim.opt.number = true          		-- Show line numbers
vim.opt.clipboard = "unnamedplus"	-- Clipboard config
vim.opt.mouse = 'a'            		-- Enable mouse support
vim.opt.ignorecase = true      		-- Ignore case in search patterns
vim.opt.smartcase = true       		-- Override ignorecase if search contains capitals
vim.opt.shiftwidth = 4         		-- Number of spaces to use for each step of indent
vim.opt.tabstop = 4            		-- Number of spaces that a <Tab> counts for
vim.opt.expandtab = true       		-- Use spaces instead of tabs
vim.g.loaded_perl_provider = 0		-- Skip perl check
vim.g.loaded_ruby_provider = 0		-- Skip Ruby check

-- Set leader key to space
vim.g.mapleader = " "
