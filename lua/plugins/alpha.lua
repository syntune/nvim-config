local quotes = require("syntune.quotes")

return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    local function set_header()
            quotes.randomize()

            dashboard.section.header.val = {
                    "syntune's config",
                    quotes.get(),
                    "",
            }
    end
    set_header()

    dashboard.section.buttons.val = {
            dashboard.button("e", "  New File", ":ene <BAR> startinsert<CR>"),
            dashboard.button("f", "󰈞  Find Files", ":Telescope find_files<CR>"),
            dashboard.button("r", "  Recent Files", ":Telescope oldfiles<CR>"),
            dashboard.button("o", "󰏇  Open Oil", ":Oil<CR>"),
            dashboard.button("l", "󰒲  Lazy", ":Lazy<CR>"),
            dashboard.button("a", "Change quote", ":bdelete <BAR> enew <BAR> Alpha<CR>"),
            dashboard.button("m",  "Mason", ":Mason<CR>"),
            dashboard.button("c",  "Config", ":cd ~/AppData/Local/nvim <BAR> Oil<CR>"),
            dashboard.button("q", "󰅚  Quit", ":qa<CR>"),
    }

    alpha.setup(dashboard.opts)

        vim.api.nvim_create_user_command("Alpha", function()
          set_header()
          require("alpha").start()
        end, { force = true })

        vim.api.nvim_create_autocmd("User", {
          pattern = "AlphaReady",
          callback = function()
            set_header()
            require("alpha").redraw()
          end,
        })
  end,
}
