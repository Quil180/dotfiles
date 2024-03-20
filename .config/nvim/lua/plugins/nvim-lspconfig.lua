return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    lspconfig.lua_ls.setup({})
    lspconfig.clangd.setup({})

    -- keybinds
    vim.keymap.set('n', 'k', vim.lsp.buf.hover, {})
    vim.keymap.set('n', 'd', vim.lsp.buf.definition, {})
    vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
  end
}
