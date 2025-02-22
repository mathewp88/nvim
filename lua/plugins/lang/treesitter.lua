return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  lazy = true,
  event = "VimEnter",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"lua", "vim", "vimdoc", "regex", "query", "markdown", "markdown_inline"},
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
