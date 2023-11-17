local colorscheme = 3

if colorscheme == 1 then
  return {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.moonflyItalics = false
      vim.g.moonflyItalics = false
      vim.g.moonflyWinSeparator = 2
      vim.g.moonflyUnderlineMatchParen = true
      vim.cmd([[colorscheme moonfly]])
    end,
  }
end
if colorscheme == 2 then
  return {
    "CarlosDanielMaturano/gruber-darker.nvim",
    name = "gruber-darker",
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme gruber-darker]])
    end,
  }
end
if colorscheme == 3 then
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
end
