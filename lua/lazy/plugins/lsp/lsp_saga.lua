return {
  "glepnir/lspsaga.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    local saga = require("lspsaga")
    saga.setup({
      scroll_preview = { scroll_down = "<C-f>", scroll_up = "<C-b>" },
      definition = {
        edit = "<CR>",
      },
      ui = {
        colors = {
          normal_bg = "#080808",
        },
      },
      symbol_in_winbar = {
        enable = false,
      },
    })
  end,
}
