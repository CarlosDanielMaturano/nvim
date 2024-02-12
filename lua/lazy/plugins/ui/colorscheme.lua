return {
  "ellisonleao/gruvbox.nvim",
  name = "gruvbox",
  priority = 1000,
  config = function()
    require("gruvbox").setup({
      terminal_colors = true,
      contrast = "hard",
      palette_overrides = {
        dark0_hard = "#080808",
      },
      inverse = true,
      italic = {
        strings = false,
        emphasis = false,
        comments = false,
        operators = false,
        folds = false,
      },
      overrides = {
        ["@lsp.type.interface.typescript"] = { link = "GruvboxYellow" },
        ["@tag.javascript"] = { link = "GruvboxYellow" },
        ["@tag.typescript"] = { link = "GruvboxYellow" },
        ["@tag.delimiter"] = { link = "GruvboxGreen" },
        TelescopeMatching = { fg = "#83a598" },
        TelescopeSelection = { bg = "#484848" },
      },
    })

    vim.cmd([[ colorscheme gruvbox ]])
  end,
}
