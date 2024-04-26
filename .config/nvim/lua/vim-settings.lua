-- setting up that 2 spaces is a tab
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- setting up my leader to be space
vim.g.mapleader = " "

-- nvim specific options
vim.opt.relativenumber = true
vim.opt.number = true

-- nvim specific keybinds
vim.keymap.set('n', ';', ":", {})
vim.keymap.set('n', '<leader>s', ":w<CR>", {})
vim.keymap.set('n', '<leader>e', ":wqa<CR>", {})
vim.keymap.set('n', '<leader>q', ":q<CR>", {})
vim.keymap.set('n', '<leader>l', ":Lazy<CR>", {})
vim.keymap.set('n', '<leader>nh', ':nohl<CR>')
vim.keymap.set('n', '1', "@q", {})
