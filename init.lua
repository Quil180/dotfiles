-- setting up that 2 spaces is a tab
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
-- setting up my leader to be space
vim.g.mapleader = " "

-- installing lazy package manager for nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- setting the plugins and opts tupples up
plugins = {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 }, -- installing the catppuccin theme
  { "nvim-telescope/telescope.nvim", tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' } }, -- lets you search for files and text in files
  {}, -- lets you get highlighting for languages of my choosing
}

opts = {

}

-- actually including lazy into nvim
require("lazy").setup(plugins, opts)

-- getting telescope to work
local builtin = require("telescope.builtin")
-- mapping the keybinds for the following
vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) -- finding files
vim.keymap.set('n', '<leader>ft', builtin.live_grep, {}) -- searching for text

-- setting the catppuccin theme as default
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"
