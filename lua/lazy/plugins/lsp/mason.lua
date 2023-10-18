return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")

    mason.setup({})
    mason_lspconfig.setup({
      ensured_installed = {
        "tsserver",
        "html",
        "cssls",
        "tailwindcss",
        "lua_ls",
        "emmtet_ls",
      },
      automatic_installation = true,
    })
  end,
}
