return {
  "neovim/nvim-lspconfig",
  config = function()
    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    local lspconfig = require("lspconfig")
    lspconfig.lua_ls.setup({
      capabilities = capabilities
    })
    lspconfig.clangd.setup({
      capabilities = capabilities,
      on_attach = function(client, bufnr)
        client.server_capabilities.signatureHelpProvider = false
      end,
    })

    -- keybinds
    vim.keymap.set('n', 'i', vim.lsp.buf.hover, {})
    vim.keymap.set('n', '<C-d>', vim.lsp.buf.definition, {})
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
  end
}
