return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      source = {
        null_ls.builtins.formatting.stylua.with({
          filetypes = { "lua", "luau" }
        }),
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.clang_format.with({
          filetypes = { "c", "cpp", "cs" },
        }),
      },
    })

    -- keymaps for formatters and such
    vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
  end,
}
