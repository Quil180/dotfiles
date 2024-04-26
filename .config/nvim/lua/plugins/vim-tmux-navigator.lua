return {
  "christoomey/vim-tmux-navigator",
  config = function()
    vim.keymap.set('n', '<leader>wv', '<C-w>v') -- split window vertically
    vim.keymap.set('n', '<leader>wh', '<C-w>s') -- split horizontally
    vim.keymap.set('n', '<leader>we', '<C-w>=') -- make windows equal
    vim.keymap.set('n', '<leader>wc', ':close<CR>') -- close current window
  end
}
