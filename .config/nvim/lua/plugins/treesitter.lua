return { -- lets you get highlighting for languages of my choosing
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    -- making treesitter work
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "lua", "c", "cpp", "java", "rust" }, -- ensuring the languages that I use are installed.
      -- enabling some other features of treesitter
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
