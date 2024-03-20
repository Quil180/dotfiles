return { -- lets you search for files and text in files
  "nvim-telescope/telescope.nvim", 
  tag = '0.1.5', 
  dependencies = { 'nvim-lua/plenary.nvim' }, 
  config = function()
    -- getting telescope to work
    local builtin = require("telescope.builtin")
    -- mapping the keybinds for the following
    vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) -- finding files
    vim.keymap.set('n', '<leader>ft', builtin.live_grep, {}) -- searching for text
  end
}
