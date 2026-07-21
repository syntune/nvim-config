-- lua/plugins/silentium.lua
return {
  "silentium-theme/silentium.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local silentium = require("silentium")

    silentium.setup({
      accent = silentium.accents.yellow,
    })

    vim.cmd.colorscheme("silentium")
  end,
}