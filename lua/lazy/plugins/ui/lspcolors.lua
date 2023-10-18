return {
  "isaksamsten/better-virtual-text.nvim",
  config = function()
    require("better-virtual-text").setup({
      highlights = {
        BetterVirtualTextError = { fg = "#db4b4b" },
        BetterVirtualTextWarn = { fg = "#e0af68" },
        BetterVirtualTextInfo = { fg = "#0db9d7" },
        BetterVirtualTextHint = { fg = "#353535" },
        BetterVirtualTextPrefixError = { link = "DiagnosticSignError" },
        BetterVirtualTextPrefixWarn = { link = "DiagnosticSignWarn" },
        BetterVirtualTextPrefixInfo = { link = "DiagnosticSignInfo" },
        BetterVirtualTextPrefixHint = { link = "DiagnosticSignHint" },
      },
    })
  end,
}
