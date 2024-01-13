return {
  "nvim-treesitter/nvim-treesitter",
  build=":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      auto_installed = true,
      ensure_installed = {"lua", "javascript", "python", "html"},
      highlight = { enable = true },
      indent = { enable = true }
    })
  end
}

