return {
  "norcalli/nvim-base16.lua",
  config = function()
    local base16 = require("base16")
    local theme = base16.theme_from_array({
      "080808",
      "161616",
      "2D2A29",
      "665c54",
      "bdae93",
      "d5c4a1",
      "ebdbb2",
      "fbf1c7",
      "fb4934",
      "fe8019",
      "fabd2f",
      "b8bb26",
      "8ec07c",
      "83a598",
      "60BF40",
      "d65d0e",
    })
    base16(theme, true)
    vim.cmd([[ hi clear LineNr ]])
    vim.api.nvim_set_hl(0, "@lsp.type.struct.rust", { link = "StorageClass" })
    vim.api.nvim_set_hl(0, "@lsp.type.variable.typescript", { fg = "#fbf1c7" })
    vim.api.nvim_set_hl(0, "@lsp.type.variable.rust", { fg = "#fbf2c7" })
    vim.api.nvim_set_hl(0, "@lsp.type.selfKeyword.rust", { fg = "#fe8019" })
    vim.api.nvim_set_hl(0, "Delimiter", { fg = "#fbf2c7" })
  end,
}
